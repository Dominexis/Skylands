
import re

# 原始字串
text = """summon minecraft:item_display ~ ~2 ~ {Tags:["pc.fx","pc.effect.undying_shell","pc.summon"],Passengers:[\
    {block_state:{Name:"minecraft:polished_deepslate_wall",Properties:{east:"none",north:"none",south:"none",up:"true",waterlogged:"false",west:"low"}},id:"minecraft:block_display",transformation:{left_rotation:[-0.18037961f,-0.11302769f,-0.011683333f,0.9770115f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.50000006f,0.49999997f,0.5000002f],translation:[0.22091769f,-1.31907508f,-0.0976865f]}},\
    {block_state:{Name:"minecraft:polished_deepslate_wall",Properties:{east:"none",north:"none",south:"none",up:"true",waterlogged:"false",west:"none"}},id:"minecraft:block_display",transformation:{left_rotation:[-0.18037961f,-0.11302769f,-0.011683333f,0.9770115f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.50000006f,0.49999997f,0.5000002f],translation:[-0.17348176f,-0.85960002f,-0.37106848f]}},\
    {block_state:{Name:"minecraft:polished_deepslate_wall",Properties:{east:"low",north:"none",south:"none",up:"true",waterlogged:"false",west:"none"}},id:"minecraft:block_display",transformation:{left_rotation:[-0.18037961f,-0.11302769f,-0.011683333f,0.9770115f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.50000006f,0.49999997f,0.5000002f],translation:[-0.69237256f,-1.33589965f,-0.3086929f]}},\
    {block_state:{Name:"minecraft:polished_deepslate_wall",Properties:{east:"none",north:"none",south:"none",up:"true",waterlogged:"false",west:"none"}},id:"minecraft:block_display",transformation:{left_rotation:[-0.18037961f,-0.11302769f,-0.011683333f,0.9770115f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.50000006f,0.49999997f,0.5000002f],translation:[-0.23708707f,-1.7942532f,-0.02124383f]}},\
    {block_state:{Name:"minecraft:polished_deepslate_wall",Properties:{east:"none",north:"none",south:"none",up:"true",waterlogged:"false",west:"none"}},id:"minecraft:block_display",transformation:{left_rotation:[-0.18037961f,-0.11302769f,-0.011683333f,0.9770115f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.50000006f,0.49999997f,0.5000002f],translation:[-0.26888976f,-2.2615795f,0.15366846f]}}\
],item:{id:"minecraft:lodestone",count:1},transformation:{left_rotation:[-0.18037964f,-0.11302768f,-0.011683346f,0.9770115f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.50000006f,0.49999994f,0.49999994f],translation:[0.0f,-1.0f,0.0f]}}"""

# offset 可調整
offset = 0.25

# 正則找出所有 translation[...] 的內容
pattern = r'translation:\[([^\]]+)\]'

def adjust_translation(match):
    values = match.group(1).split(',')
    floats = [float(v.strip().rstrip('f')) for v in values]
    # 調整第二個值
    floats[1] += offset
    # 重新組合回字串，加上 f
    new_values = ",".join(f"{v}f" for v in floats)
    return f"translation:[{new_values}]"

# 替換並生成新字串
new_text = re.sub(pattern, adjust_translation, text)

print(new_text)
