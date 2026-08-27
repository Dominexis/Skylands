execute store result score #dmg synb.Tmp.Expr run scoreboard players get @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.ctx.generic_player_src,limit=1] synb.IEStat.RangedDmg
scoreboard players operation #dmg synb.Tmp.Expr *= num100 synb.Const
execute store result storage synb.d:tmp args.dmg int 1 run scoreboard players get #dmg synb.Tmp.Expr
scoreboard players set #enemy_hurt_dmg_type synb.Tmp.Ctx 2
function synb:itemengine/player/damage_enemy_precise with storage synb.d:tmp args
scoreboard players set #enemy_hurt_dmg_type synb.Tmp.Ctx 0
function synb:itemengine/player/damage_enemy_magic {dmg:0}

tag @s add synb.item.firework.resistance
effect give @s minecraft:resistance 1 255 true

execute if entity @s[tag=synb.attr.death_already_triggered] run function synb:all_items/firework/_sniped