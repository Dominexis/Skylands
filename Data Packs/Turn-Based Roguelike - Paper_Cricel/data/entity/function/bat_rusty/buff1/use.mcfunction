
execute as @e[tag=pc.intent.now,type=marker,limit=1] at @s run function entity:bat_rusty/buff1/2
function sys:combat/turn/end_act

# fx
playsound sys:buff master @a ~ ~1024 ~ 0 1.5 0.25
playsound minecraft:entity.goat.screaming.hurt master @a ~ ~1024 ~ 0 1.5 1
function sys:fx/buff/use
particle minecraft:dust{color:[0.612, 0.184, 0.710],scale:2} ~ ~ ~ 0.4 0.6 0.4 0 20 force