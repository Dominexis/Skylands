# exe : object

# effect
data modify storage pc:temp repair set value {value:1,category:"skill1"}
function pc:sys/item/durability/use
data modify storage pc:temp repair set value {value:1,category:"skill2"}
function pc:sys/item/durability/use
data modify storage pc:temp repair set value {value:1,category:"skill3"}
function pc:sys/item/durability/use

scoreboard players set #value pc.main 120
function pc:passive/shield/use

# fx
function pc:fx/text/use {text:[{text:"Knee Jerk Reflex",color:"gray"}]}
particle minecraft:soul ~ ~ ~ 0.5 0.5 0.5 0 10 force
playsound minecraft:entity.puffer_fish.sting master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1.5
playsound minecraft:entity.rabbit.hurt master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0