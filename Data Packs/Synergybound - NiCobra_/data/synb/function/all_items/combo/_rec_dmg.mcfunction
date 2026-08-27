function synb:itemengine/player/damage_enemy_magic {dmg:3}
scoreboard players remove #rec synb.Tmp.Arg 1
execute if score #rec synb.Tmp.Arg matches 1.. run function synb:all_items/combo/_rec_dmg