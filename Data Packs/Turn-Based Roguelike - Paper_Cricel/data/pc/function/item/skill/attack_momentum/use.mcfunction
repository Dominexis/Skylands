
# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.in_turn.skill.attack_momentum"}
data modify storage pc:temp desc.lore set value {item:"attack_momentum",index:4,text:[{text:"",italic:0b,color:"gray"},{text:"● ",color:"#72bd7a"},{text:"ᴛɪᴍᴇꜱ : "},{score:{name:"#var",objective:"pc.main"}}]}
function pc:sys/item/refresh/use
scoreboard players operation #temp.skill.attack_momentum pc.main = #var pc.main

execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid.now] at @s run function pc:item/skill/attack_momentum/2

scoreboard players operation #value pc.main = #temp.skill.attack_momentum pc.main
scoreboard players operation #value pc.main *= #10 sl.value
function pc:passive/shield/use

# fx
function pc:item/skill/attack_momentum/fx/use
playsound minecraft:entity.player.attack.sweep master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.25
playsound minecraft:entity.allay.item_given master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1
playsound minecraft:block.note_block.chime master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1