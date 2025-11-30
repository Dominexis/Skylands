
function pc:sys/player/owner/find

# Durability
data modify storage pc:temp repair set value {value:1,unlimit:true}
function pc:item/head/frenzied/on_hit/repair_id
function pc:sys/item/durability/use

# Energy
scoreboard players add @p[predicate=sl:player,tag=pc.sys.passive,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.ep 1

function pc:sys/player/owner/clear

# fx
function pc:fx/text/use {text:[{text:"Frenzied",color: "red"}]}
playsound minecraft:entity.vex.charge master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
playsound minecraft:entity.zombie_villager.converted master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1
particle minecraft:dust{color:[1,0,0],scale:1} ~ ~1 ~ 0.25 0.4 0.25 0 30 force