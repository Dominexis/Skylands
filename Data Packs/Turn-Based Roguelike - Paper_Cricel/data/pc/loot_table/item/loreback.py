import ast
import os

def convert_json_like_string(text_block: str) -> str:
    text_block = text_block.replace('false', 'False').replace('true', 'True').replace('null', 'None')

    lines = [line.strip().rstrip(',') for line in text_block.strip().split('\n')]

    parsed_lines = []
    for line in lines:
        if line == '""':
            parsed_lines.append("")  # 純換行
        elif line:
            try:
                parsed_line = ast.literal_eval(line)
                parsed_lines.append(parsed_line)
            except Exception as e:
                print(f"⚠️ 解析失敗的行：{line}\n錯誤：{e}")
    return convert_json_to_text(parsed_lines)

def convert_json_to_text(blocks):
    result_lines = []
    for line in blocks:
        if line == "":
            result_lines.append("")  # 保留換行
            continue
        if not line:
            continue

        # 判斷是否是 condition 或 branch
        is_gray = line[0] == {"text": "", "italic": False, "color": "gray"}
        is_branch = (
            is_gray
            and len(line) > 1
            and line[1] == {"text": "● ", "color": "#72bd7a"}
        )

        # 文字拼接（過濾 font）
        line_text = ''.join(
            part['text']
            for part in line
            if 'font' not in part
        )

        if is_branch:
            line_text = "$branch$" + line_text.replace("● ", "", 1)
        elif is_gray:
            line_text = "$condition$" + line_text

        result_lines.append(line_text)
    return '\n'.join(result_lines)

# 🚀 讀取檔案
file = os.path.join(os.path.dirname(os.path.abspath(__file__)), "#output.txt")
with open(file, "r", encoding="utf-8") as f:
    input_text = f.read()

# 🪄 執行轉換
converted_text = convert_json_like_string(input_text)
file = os.path.join(os.path.dirname(os.path.abspath(__file__)), "#input.txt")
with open(file, "w+", encoding="utf-8") as f:
    f.write(converted_text)