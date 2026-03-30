
scoreboard players operation @s pc.object_id = @n[type=marker,tag=pc.intent.now,distance=..100] pc.object_id
data modify storage pc:temp icon set from entity @n[type=marker,tag=pc.intent.now,distance=..100] data

# Pos
tp @s ~ ~1 ~
execute positioned ~-1.5 ~-100 ~-1.5 as @e[predicate=pc:object/all,type=!player,dx=2,dy=200,dz=2,limit=1] at @s run function pc:sys/object/intent/icon/grid/3

# Display
function pc:sys/object/intent/icon/grid/display/use
data modify entity @s text set value ["",{text:"\uf003",font:"pc:default"},{nbt: "icon.damage", "storage": "pc:temp"},{nbt: "icon.text", "storage": "pc:temp","interpret": true}]
execute if score #is_potential pc.main matches 1 run data modify entity @s text.extra[1] set value {nbt:"text.extra[1]",entity:"@s",color:gray,shadow_color:1665878859}

# Reset
tag @s remove pc.summon
execute positioned ~-1.5 ~-100 ~-1.5 run tag @e[predicate=pc:object/all,type=!player,tag=pc.intent.in_range,dx=2,dy=200,dz=2,limit=1] remove pc.intent.in_range
data remove storage pc:temp icon