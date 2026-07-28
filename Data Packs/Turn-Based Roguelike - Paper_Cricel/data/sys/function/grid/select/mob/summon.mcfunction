
function sys:entity/intent/icon/clear
data modify storage pc:temp grid set value {display:'intent'}

scoreboard players operation #self pc.origin.id = @s pc.entity.id
execute as @e[tag=pc.intent,predicate=sys:owner/origin,type=marker] run tag @s add pc.intent.now

execute if entity @e[tag=pc.select,tag=!pc.select.clear,type=item_display,limit=1] as @e[tag=pc.grid,type=marker] at @s run function sys:grid/update
execute unless entity @e[tag=pc.select,tag=!pc.select.clear,type=item_display,limit=1] positioned ~-1.5 ~-100 ~-1.5 as @n[tag=pc.grid,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function sys:grid/space/summon/use

# fx
playsound minecraft:entity.puffer_fish.blow_up master @a[predicate=sl:player,predicate=sys:player/ingame] ~ ~1024 ~ 0 1 1