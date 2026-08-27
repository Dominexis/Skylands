# Regular damage
execute store result score #dmg synb.Tmp.Expr run scoreboard players get @s synb.IEStat.MeleeDmg
scoreboard players operation #dmg synb.Tmp.Expr *= num100 synb.Const
execute store result storage synb.d:tmp args.dmg int 1 run scoreboard players get #dmg synb.Tmp.Expr
execute as @e[type=!minecraft:player,tag=synb.ctx.enemy_blocked_src,distance=..4] run function synb:itemengine/player/damage_enemy_precise with storage synb.d:tmp args

# Magic damage
execute at @e[type=!minecraft:player,tag=synb.ctx.enemy_blocked_src,distance=..4] run function synb:utils/visuals/summon_effect_proc {item_icon:"minecraft:nautilus_shell"}
execute as @e[type=!minecraft:player,tag=synb.ctx.enemy_blocked_src,distance=..4] run function synb:itemengine/player/damage_enemy_magic {dmg:0}