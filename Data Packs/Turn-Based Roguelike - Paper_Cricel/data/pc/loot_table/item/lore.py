import json
import re
import os
import nouns

def parse_lore(lore: str):
    segments = lore.strip().split("\n")

    colored_words = nouns.colored_words
    icon_words = nouns.icon_words

    # 預先準備關鍵字，長的優先避免被短字搶到
    keywords = sorted(
        [*colored_words.keys(), *icon_words.keys()],
        key=len,
        reverse=True
    )

    def clean_json_segment(segment):
        """轉成 json 並過濾空字串節點"""
        return json.dumps(segment, ensure_ascii=False).replace(', {"text": ""}', "")

    for segment in segments:
        # 決定初始樣式
        if "$condition$" in segment:
            json_segment = [{"text": "", "italic": False, "color": "gray"}]
        elif "$branch$" in segment:
            json_segment = [
                {"text": "", "italic": False, "color": "gray"},
                {"text": "● ", "color": "#72bd7a"}
            ]
        elif not segment:
            yield f'                    {json.dumps("", ensure_ascii=False)},'
            continue
        else:
            json_segment = [{"text": "", "italic": False, "color": "white"}]

        text = segment.replace("$condition$", "").replace("$branch$", "")

        # 找出所有關鍵詞位置（不重疊）
        matches = [
            (m.start(), m.end(), kw)
            for kw in keywords
            for m in re.finditer(re.escape(kw), text)
        ]

        # 過濾掉重疊的
        filtered, last_end = [], 0
        for start, end, kw in sorted(matches):
            if start >= last_end:
                filtered.append((start, end, kw))
                last_end = end

        # 拼接文字 + 標記
        pos = 0
        for start, end, kw in filtered:
            if pos < start:
                json_segment.append({"text": text[pos:start]})

            segment_entry = {"text": kw}
            if kw in colored_words:
                segment_entry["color"] = colored_words[kw]
            json_segment.append(segment_entry)

            if kw in icon_words:
                json_segment.append(icon_words[kw])

            pos = end

        if pos < len(text):
            json_segment.append({"text": text[pos:]})

        yield f'                    {clean_json_segment(json_segment)},'


input_file = os.path.join(os.path.dirname(os.path.abspath(__file__)), "#input.txt")
with open(input_file, "r", encoding="utf-8") as f:
    lore = f.read()

output_file = os.path.join(os.path.dirname(os.path.abspath(__file__)), "#output.txt")
with open(output_file, mode="w+", encoding="utf-8") as f:
    result = parse_lore(lore)
    f.write("\n".join(result))