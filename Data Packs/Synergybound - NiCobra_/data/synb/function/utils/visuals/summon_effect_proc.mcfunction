# /!\ Uncompiled
# At : [positioned]
# Args :
#   - item_icon (macro)
##

# >>> SPECIAL LOGIC : combo
# Adhoc color set specifically for this, change later if needed
# <<<
$summon minecraft:item_display ~ ~2.2 ~ {Tags:["synb.type.icon_effect"],item:{id:"$(item_icon)",components:{"minecraft:dyed_color":16716032}},billboard:"vertical",transformation:{left_rotation:[0f,1f,0f,1f],right_rotation:[0f,1f,0f,1f],translation:[0f,0f,0f],scale:[0.45f,0.45f,0.45f]}}