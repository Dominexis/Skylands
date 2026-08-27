
# Level 1
attribute @s[advancements={sanct:spell/revenge={level2=false}}] minecraft:armor modifier add sanct:revenge 2 add_value
execute if entity @s[advancements={sanct:spell/revenge={level2=false}}] run return run attribute @s minecraft:max_health modifier add sanct:revenge 4 add_value

# Level 2
attribute @s[advancements={sanct:spell/revenge={level3=false}}] minecraft:armor modifier add sanct:revenge 4 add_value
execute if entity @s[advancements={sanct:spell/revenge={level3=false}}] run return run attribute @s minecraft:max_health modifier add sanct:revenge 8 add_value

# Level 3
attribute @s[advancements={sanct:spell/revenge={level4=false}}] minecraft:armor modifier add sanct:revenge 6 add_value
execute if entity @s[advancements={sanct:spell/revenge={level4=false}}] run return run attribute @s minecraft:max_health modifier add sanct:revenge 12 add_value

# Level 4
attribute @s minecraft:armor modifier add sanct:revenge 8 add_value
attribute @s minecraft:max_health modifier add sanct:revenge 16 add_value