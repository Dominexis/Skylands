
# effect
scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:"robust"}

scoreboard players set #damage pc.main 150
data modify storage pc:temp damage set value {is_heal:1b}
function pc:sys/object/damage/victim
data remove storage pc:temp damage

data modify entity @s data.brain.buff1 set value 2

execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now] at @s run function pc:object/hoglin/buff1/2