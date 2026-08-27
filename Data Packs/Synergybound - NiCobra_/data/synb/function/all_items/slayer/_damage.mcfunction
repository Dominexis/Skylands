execute store result score #proportion synb.Tmp.Expr run attribute @s minecraft:max_health get
scoreboard players operation #proportion synb.Tmp.Expr *= num80 synb.Const
execute store result storage synb.d:tmp args.dmg double 1 run scoreboard players get #proportion synb.Tmp.Expr
function synb:itemengine/player/damage_enemy_precise with storage synb.d:tmp args
particle minecraft:block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0.2 0.9 0.2 1 40
playsound minecraft:block.trial_spawner.close_shutter neutral @a ~ ~ ~ 1.5 0.5