# /!\ Uncompiled
# As/At : arena
# Args :
#   - arena_id (macro)
#   - cycle (macro)
#   - wave_id (macro)
#   - is_final (macro)
##

scoreboard players set #lvl synb.Tmp.Arg 1
execute if score @s synb.ASys.PlayersInArena matches 2.. run scoreboard players set #lvl synb.Tmp.Arg 2
execute if score @s synb.ASys.PlayersInArena matches 4.. run scoreboard players set #lvl synb.Tmp.Arg 3
$function synb:all_waves/arena$(arena_id)/c$(cycle)_wave$(is_final)$(wave_id)

$execute unless entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local] run tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player] {"text":"[Synb Error] Wave not found : arena$(arena_id)/c$(cycle)_wave$(is_final)$(wave_id)","color":"red"}