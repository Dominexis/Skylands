
scoreboard players operation @s pc.object_id = @n[type=minecraft:marker,distance=..100,tag=pc.intent.now] pc.object_id
data modify storage pc:temp icon set from entity @n[type=minecraft:marker,distance=..100,tag=pc.intent.now] data

# Pos
tp @s ~ ~1 ~
execute positioned ~-1.5 ~-100 ~-1.5 as @e[type=!minecraft:player,dx=2,dy=200,dz=2,limit=1,predicate=pc:object/all] at @s run function pc:sys/object/intent/icon/grid/3

# Display
function pc:sys/object/intent/icon/grid/display/use
data modify entity @s text set value ["",{text:"\uf003",font:"pc:default",type:"text"},{nbt:"icon.damage",storage:"pc:temp",source:"storage",type:"nbt"},{nbt:"icon.text",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}]
execute if score #is_potential pc.main matches 1 run data modify entity @s text.extra[1] set value {nbt:"text.extra[1]",entity:"@s",color:"gray",shadow_color:1665878859,source:"entity",type:"nbt"}

# Reset
tag @s remove pc.summon
execute positioned ~-1.5 ~-100 ~-1.5 run tag @e[type=!minecraft:player,dx=2,dy=200,dz=2,tag=pc.intent.in_range,limit=1,predicate=pc:object/all] remove pc.intent.in_range
data remove storage pc:temp icon