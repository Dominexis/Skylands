
# effect
scoreboard players set #damage pc.main 0
execute if data entity @s data.in_combat.skill.parrying.equip run function pc:item/skill/parrying/blocked/use

# fx
execute unless score #block_fx pc.main matches 0 run function pc:fx/text/use {text:[{text:"Blocked",color:"#a4ada6"}]}
scoreboard players reset #block_fx pc.main

particle minecraft:firework ~ ~ ~ 0 0 0 0.1 10 force
playsound minecraft:item.shield.block master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.5 1 0.5
playsound minecraft:entity.zombie.attack_iron_door master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] ~ ~ ~ 0.25 1.25 0.25