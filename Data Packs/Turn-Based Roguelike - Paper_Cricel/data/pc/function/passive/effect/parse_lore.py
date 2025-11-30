import json 
import re
import os
import nouns

def parse_lore(info):
    lore = str(info["description"])
    segments = lore.strip().split("\n")
    formatted_segments = []

    colored_words = nouns.colored_words
    icon_words = nouns.icon_words

    keywords = list(colored_words.keys()) + list(icon_words.keys())
    keywords.sort(key=lambda x: -len(x))  # 長的先來，避免被短的搶掉

    for segment in segments:
        if '$condition$' in segment:
            json_segment = [{"text": "", "italic": False, "color": "gray"}]
        elif '$branch$' in segment:
            json_segment = [
                {"text": "", "italic": False, "color": "gray"},
                {"text": "● ", "color": "#72bd7a"}
            ]
        elif segment == '':
            formatted_segments.append(f'{json.dumps("", ensure_ascii=False)},')
            continue
        else:
            json_segment = [{"text": "", "italic": False, "color": "gray"}]

        text = segment.replace('$condition$', '').replace('$branch$', '')

        # 找出所有關鍵詞位置（不重複）
        matches = []
        for keyword in keywords:
            for m in re.finditer(re.escape(keyword), text):
                matches.append((m.start(), m.end(), keyword))

        # 按開始位置排序，處理重疊情況
        matches.sort()
        filtered = []
        last_end = 0
        for start, end, keyword in matches:
            if start >= last_end:
                filtered.append((start, end, keyword))
                last_end = end

        pos = 0
        for start, end, keyword in filtered:
            if pos < start:
                json_segment.append({"text": text[pos:start]})

            if keyword in colored_words:
                json_segment.append({"text": keyword, "color": colored_words[keyword]})
            else:
                json_segment.append({"text": keyword})

            if keyword in icon_words:
                json_segment.append(icon_words[keyword])

            pos = end

        if pos < len(text):
            json_segment.append({"text": text[pos:]})

        json_string = json.dumps(json_segment, ensure_ascii=False).replace(', {"text": ""}', '')
        json_string = str(re.sub(r'"(\w+)":', r'\1:', json_string))

    return json_string