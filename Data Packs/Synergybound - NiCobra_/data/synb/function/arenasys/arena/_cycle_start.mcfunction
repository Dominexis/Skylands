# As/At : arena
##

execute at @e[type=minecraft:item_display,tag=synb.type.collectible,distance=..2] run function synb:utils/spawn_money {amount:8}
kill @e[type=minecraft:item_display,tag=synb.type.collectible,distance=..2]

# Effects
tp @a[team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,distance=15..] @s
effect give @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] minecraft:darkness 3 1 true
effect give @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] minecraft:nausea 6 0 true
execute unless entity @s[tag=synb.attr.final] run playsound minecraft:block.end_portal.spawn master @a[distance=..40] ~ ~ ~ 1 0.8

# Final effects (Arena 3)
execute if entity @s[tag=synb.attr.final] run playsound minecraft:entity.wither.spawn master @a[distance=..40] ~ ~ ~ 1 0.7
execute if entity @s[tag=synb.attr.final] run playsound minecraft:block.end_portal.spawn master @a[distance=..40] ~ ~ ~ 2 0.6
execute if entity @s[tag=synb.attr.final] run playsound minecraft:entity.elder_guardian.curse master @a[distance=..40] ~ ~ ~ 1 0.5
execute if entity @s[tag=synb.attr.final] run playsound minecraft:music.dragon record @a[team=sl.player,tag=synb.attr.player_in_arena,distance=..40] ~ ~ ~ 2 1

# Arena 2 final
execute if entity @s[tag=synb.attr.disable_special_wave,scores={synb.ASys.ArenaID=2,synb.ASys.CurrentCycle=2}] run tag @s add synb.attr.final

title @s times 20 70 20
execute if entity @s[tag=synb.attr.final] run title @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] title {"text":" ","color":"white"}
execute if entity @s[tag=synb.attr.final] run title @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local] subtitle {"text":"Last round !","bold":true,"color":"white"}