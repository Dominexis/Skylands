
# effect
scoreboard players set #is_hit pc.main 0
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.intent.now] at @s run function pc:object/bat/attack1/2

# fx
execute if score #is_hit pc.main matches 1 run function pc:fx/text/use {text:[{text:"Vampire Reaping",color:"#c6404b"}]}
playsound minecraft:entity.evoker_fangs.attack master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.5 2 0.5
playsound minecraft:entity.allay.item_given master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 0 1
playsound minecraft:entity.allay.item_given master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 1 0 1