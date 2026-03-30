
# fx
scoreboard players set @s pc.title 80
title @s times 0 60 20
title @s title [{text:"☠ ",color:"red",type:"text"},{text:"Defeat",color:"#FA2E2E",bold:1b,type:"text"},{text:" ☠",type:"text"}]
effect give @s minecraft:blindness 4 0 true

playsound minecraft:entity.warden.death master @s ~ ~ ~ 1 1
playsound minecraft:entity.pillager.death master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1