
data modify storage pc:temp range set value {type:'0',mode:victim,target:enemy}
function pc:sys/grid/range/use

scoreboard players set #damage pc.main 0
execute as @e[predicate=pc:sys/entity/victim,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] if data entity @s data.effects[{id:'vulnerable'}] run function pc:item/skill/warrior/silent_axe/3
scoreboard players add #damage pc.main 8
function pc:sys/entity/dmg/atker

# fx
particle minecraft:glow_squid_ink ~ ~1 ~ 0.2 0.4 0.2 0.25 8 force

particle minecraft:item{item:"netherite_block"} ~-1.5 ~0.5 ~0.0 -1.5 0 0.0 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-1.4 ~0.5 ~0.1 -1.4 0 0.1 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-1.4 ~0.5 ~-0.1 -1.4 0 -0.1 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-1.3 ~0.5 ~0.2 -1.3 0 0.2 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-1.3 ~0.5 ~-0.2 -1.3 0 -0.2 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-1.2 ~0.5 ~0.3 -1.2 0 0.3 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-1.2 ~0.5 ~-0.3 -1.2 0 -0.3 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-1.1 ~0.5 ~0.4 -1.1 0 0.4 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-1.1 ~0.5 ~-0.4 -1.1 0 -0.4 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-1.0 ~0.5 ~0.5 -1.0 0 0.5 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-1.0 ~0.5 ~-0.5 -1.0 0 -0.5 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.9 ~0.5 ~0.6 -0.9 0 0.6 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.9 ~0.5 ~-0.6 -0.9 0 -0.6 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.8 ~0.5 ~0.7 -0.8 0 0.7 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.8 ~0.5 ~-0.7 -0.8 0 -0.7 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.7 ~0.5 ~0.8 -0.7 0 0.8 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.7 ~0.5 ~-0.8 -0.7 0 -0.8 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.6 ~0.5 ~0.9 -0.6 0 0.9 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.6 ~0.5 ~-0.9 -0.6 0 -0.9 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.5 ~0.5 ~1.0 -0.5 0 1.0 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.5 ~0.5 ~-1.0 -0.5 0 -1.0 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.4 ~0.5 ~1.1 -0.4 0 1.1 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.4 ~0.5 ~-1.1 -0.4 0 -1.1 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.3 ~0.5 ~1.2 -0.3 0 1.2 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.3 ~0.5 ~-1.2 -0.3 0 -1.2 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.2 ~0.5 ~1.3 -0.2 0 1.3 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.2 ~0.5 ~-1.3 -0.2 0 -1.3 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.1 ~0.5 ~1.4 -0.1 0 1.4 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~-0.1 ~0.5 ~-1.4 -0.1 0 -1.4 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.0 ~0.5 ~1.5 0.0 0 1.5 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.0 ~0.5 ~-1.5 0.0 0 -1.5 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.1 ~0.5 ~1.4 0.1 0 1.4 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.1 ~0.5 ~-1.4 0.1 0 -1.4 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.2 ~0.5 ~1.3 0.2 0 1.3 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.2 ~0.5 ~-1.3 0.2 0 -1.3 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.3 ~0.5 ~1.2 0.3 0 1.2 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.3 ~0.5 ~-1.2 0.3 0 -1.2 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.4 ~0.5 ~1.1 0.4 0 1.1 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.4 ~0.5 ~-1.1 0.4 0 -1.1 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.5 ~0.5 ~1.0 0.5 0 1.0 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.5 ~0.5 ~-1.0 0.5 0 -1.0 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.6 ~0.5 ~0.9 0.6 0 0.9 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.6 ~0.5 ~-0.9 0.6 0 -0.9 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.7 ~0.5 ~0.8 0.7 0 0.8 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.7 ~0.5 ~-0.8 0.7 0 -0.8 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.8 ~0.5 ~0.7 0.8 0 0.7 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.8 ~0.5 ~-0.7 0.8 0 -0.7 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.9 ~0.5 ~0.6 0.9 0 0.6 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~0.9 ~0.5 ~-0.6 0.9 0 -0.6 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.0 ~0.5 ~0.5 1.0 0 0.5 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.0 ~0.5 ~-0.5 1.0 0 -0.5 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.1 ~0.5 ~0.4 1.1 0 0.4 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.1 ~0.5 ~-0.4 1.1 0 -0.4 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.2 ~0.5 ~0.3 1.2 0 0.3 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.2 ~0.5 ~-0.3 1.2 0 -0.3 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.3 ~0.5 ~0.2 1.3 0 0.2 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.3 ~0.5 ~-0.2 1.3 0 -0.2 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.4 ~0.5 ~0.1 1.4 0 0.1 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.4 ~0.5 ~-0.1 1.4 0 -0.1 0.1 0 force
particle minecraft:item{item:"netherite_block"} ~1.5 ~0.5 ~-0.0 1.5 0 -0.0 0.1 0 force