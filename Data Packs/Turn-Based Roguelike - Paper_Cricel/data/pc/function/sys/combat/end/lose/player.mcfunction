
# fx
scoreboard players set @s pc.title 80
title @s times 0 60 20
title @s title [{text:"☠ ",color:"red",type:"text"},{nbt:"sys.ui.defeat",storage:"pc:lang",interpret:1b,type:"nbt"},{text:" ☠",type:"text"}]
effect give @s minecraft:blindness 4 0 true

playsound minecraft:entity.warden.death master @s ~ ~1024 ~ 0 1 1
playsound minecraft:entity.pillager.death master @a ~ ~1024 ~ 0 1 1