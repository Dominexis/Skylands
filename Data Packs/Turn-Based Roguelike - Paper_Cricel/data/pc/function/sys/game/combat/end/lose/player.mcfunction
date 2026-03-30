
# fx
scoreboard players set @s pc.title 80
title @s times 0 60 20
title @s title [{text:"☠ ",color:"red"},{text:"Defeat",color: "#fa2e2e",bold: true},{text:" ☠"}]
effect give @s blindness 4 0 true

playsound minecraft:entity.warden.death master @s ~ ~ ~ 1 1
playsound minecraft:entity.pillager.death master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1