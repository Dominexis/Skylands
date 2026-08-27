
data modify storage pc:temp effect set value {id:"void_area",value:3}
execute as @e[tag=pc.grid,type=marker,distance=..0.1,limit=1] run function pc:sys/effect/apply

kill @s

# fx
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-1.5 ~ ~1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-1.5 ~ ~-1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-1.0 ~ ~1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-1.0 ~ ~-1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-0.5 ~ ~1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-0.5 ~ ~-1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~0.0 ~ ~1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~0.0 ~ ~-1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~0.5 ~ ~1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~0.5 ~ ~-1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~1.0 ~ ~1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~1.0 ~ ~-1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~1.5 ~ ~1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~1.5 ~ ~-1.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-1.5 ~ ~-1.0 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~1.5 ~ ~-1.0 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-1.5 ~ ~-0.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~1.5 ~ ~-0.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-1.5 ~ ~0.0 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~1.5 ~ ~0.0 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-1.5 ~ ~0.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~1.5 ~ ~0.5 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~-1.5 ~ ~1.0 0 0 0 10 0 force
particle instant_effect{color:[0.780, 0.337, 1.000],power:1} ~1.5 ~ ~1.0 0 0 0 10 0 force