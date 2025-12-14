# Runs as and at a player when they log into your plot. Use this to greet them or give them gear, or otherwise just prepare them.
bossbar set minecraft:overall players @a
scoreboard players enable @s resetlevel
scoreboard players set @s curr_level 0
scoreboard players set @s numCorrect 0
gamemode adventure @s
attribute @s minecraft:burning_time base set 0
effect give @s saturation infinite 255 true
effect give @s regeneration infinite 255 true
give @s minecraft:shears[minecraft:can_break={blocks:["minecraft:red_wool","minecraft:orange_wool","minecraft:yellow_wool","minecraft:lime_wool","minecraft:blue_wool","minecraft:purple_wool",]},minecraft:enchantments={efficiency:5},minecraft:custom_name={"text":"Wool Cutters","color":"aqua","italic":false},minecraft:lore=[{"text":"Cut out your mistakes","color":"light_purple"}],minecraft:tooltip_display={hidden_components:[can_break]},minecraft:unbreakable={}]
give @s minecraft:brush[minecraft:can_place_on={blocks:["minecraft:suspicious_sand","minecraft:suspicious_gravel"]},minecraft:enchantments={unbreaking:3},minecraft:unbreakable={}]