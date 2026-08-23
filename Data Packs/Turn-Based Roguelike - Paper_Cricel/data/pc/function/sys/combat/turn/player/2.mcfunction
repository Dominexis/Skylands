
tag @s remove pc.turn.queue
scoreboard players set @s pc.entity.inturn 1

scoreboard players operation #self sl.id = @s sl.id
execute as @e[predicate=pc:sys/entity/player,predicate=pc:sys/owner/player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/combat/turn/player/2b
function pc:sys/player/hotbar/use

# fx
title @s times 0 40 20
function pc:sys/player/title/empty
title @s subtitle [{text:"",type:"text"},{nbt:"sys.hud.offset.your_turn_front",storage:"pc:lang",font:"pc:sys/space"},{text:"1","font":"pc:sys/background",shadow_color:0,type:"text"},{nbt:"sys.hud.offset.your_turn_back",storage:"pc:lang",font:"pc:sys/space"},{storage:"pc:lang",nbt:"sys.hud.your_turn",interpret:1b}]

playsound minecraft:block.ender_chest.open master @s ~ ~1024 ~ 0 1 0.5
playsound minecraft:block.amethyst_block.resonate master @s ~ ~1024 ~ 0 1 1

execute positioned ~ ~0.25 ~ run function pc:sys/combat/turn/player/fx