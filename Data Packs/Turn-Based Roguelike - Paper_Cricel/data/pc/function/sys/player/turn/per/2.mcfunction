
# effect
clear @s
tag @s add pc.your_turn
tag @s remove pc.your_turn.queue

scoreboard players operation #this sl.id = @s sl.id
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/ally_player] if score @s sl.id = #this sl.id at @s run tag @s add pc.player.now

# Inventory
execute as @n[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.player.now,predicate=pc:object/ally_player] run data modify storage pc:temp turn set from entity @s data

function pc:sys/player/turn/per/item with storage pc:temp turn.hotbar
loot replace entity @s container.8 loot pc:item/end_turn
data remove storage pc:temp turn.in_turn

execute as @n[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.player.now,predicate=pc:object/ally_player] run data modify entity @s data set from storage pc:temp turn

# Energy
scoreboard players operation @s pc.ep = @s pc.epmax
scoreboard players operation @s pc.ep += @s pc.epqueue
scoreboard players reset @s pc.epqueue

# Passive
execute as @n[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.player.now,predicate=pc:object/ally_player] at @s run function pc:sys/object/passive/use {type:"new_turn"}

# fx
title @s times 0 40 20
function pc:sys/player/title/empty/use
title @s subtitle [{text:"",type:"text"},{text:"3\uf050\uf009",font:"pc:default",shadow_color:0,type:"text"},{text:"ʏᴏᴜʀ ᴛᴜʀɴ",color:"#71EDA5",type:"text"}]

playsound minecraft:block.ender_chest.open master @s ~ ~ ~ 0.5 1
playsound minecraft:block.amethyst_block.resonate master @s ~ ~ ~ 1 1

execute positioned ~ ~0.25 ~ run function pc:sys/player/turn/per/justice_fx
execute as @n[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.player.now,predicate=pc:object/ally_player] positioned ~ ~0.25 ~ run function pc:sys/player/turn/per/justice_fx

tag @n[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.player.now,predicate=pc:object/ally_player] remove pc.player.now
data remove storage pc:temp turn