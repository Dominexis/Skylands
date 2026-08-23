
function pc:sys/entity/intent/icon/clear
data modify storage pc:temp grid set value {display:'intent'}

scoreboard players operation #self pc.origin.id = @s pc.entity.id
execute as @e[tag=pc.intent,predicate=pc:sys/owner/origin,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run tag @s add pc.intent.now

execute if entity @e[tag=pc.select,tag=!pc.select.clear,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] as @e[tag=pc.grid,type=marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/update
execute unless entity @e[tag=pc.select,tag=!pc.select.clear,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] positioned ~-1.5 ~-100 ~-1.5 as @n[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function pc:sys/grid/space/summon/use

# fx
playsound minecraft:entity.puffer_fish.blow_up master @a[predicate=sl:player,predicate=pc:sys/player/ingame] ~ ~1024 ~ 0 1 1