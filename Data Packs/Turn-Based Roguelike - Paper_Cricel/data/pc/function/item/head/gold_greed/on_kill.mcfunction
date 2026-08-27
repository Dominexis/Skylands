
execute if data entity @e[predicate=pc:sys/entity/victim,scores={pc.hp=..0},limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] data.effects[{id:'minion'}] run return fail

scoreboard players add $money pc.game 3

# fx
execute at @e[predicate=pc:sys/entity/victim,scores={pc.hp=..0},limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:item/head/gold_greed/fx/use