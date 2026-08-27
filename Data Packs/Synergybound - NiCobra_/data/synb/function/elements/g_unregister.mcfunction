##

scoreboard objectives remove synb.PSys.FountainCount
scoreboard objectives remove synb.PSys.FountainTotal
scoreboard objectives remove synb.Shop.RerollProgress
scoreboard objectives remove synb.Shop.SacdoorCondition

kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:interaction,tag=synb.type.blocker]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.sacdoor]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.fountain]
kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.mark.reroll_cauldron]