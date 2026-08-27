
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^1
execute if score @s pc.duration matches 4.. positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.grid,tag=!pc.grid.triggered,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function pc:effect/flaming_touch/use
execute if function pc:sys/entity/hitbox/ally run return run function pc:entity/blaze_magma/attack1/fx/2

execute unless function pc:sys/entity/hitbox/intent positioned ^ ^ ^4 unless function pc:sys/entity/hitbox/intent at @s run return run function pc:entity/blaze_magma/attack1/fx/clear

# fx
particle minecraft:dust_color_transition{from_color:[0.965, 0.514, 0.235],to_color:[0.651, 0.133, 0.133],scale:1.5f} ~ ~ ~ 0.3 0.3 0.3 0 3 force
particle flame ~ ~ ~ 0.3 0.3 0.3 0 3 force