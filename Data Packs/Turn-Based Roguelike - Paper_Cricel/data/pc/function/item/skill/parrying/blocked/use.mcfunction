
# Limit
#tellraw @a ["Hurt Count: ",{score:{name:"#var",objective:"pc.main"}},x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
function pc:sys/utils/math/get {id:"entity @s data.in_turn.skill.parrying.hurt_count"}
execute if score #var pc.main matches 2.. run return fail

# Energy
function pc:sys/player/owner/find
scoreboard players add @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.passive,predicate=pc:player/ingame,predicate=sl:player] pc.epqueue 1
function pc:sys/player/owner/clear

# Durability
data modify storage pc:temp repair set value {value:1,item:"parrying"}
function pc:sys/item/durability/use

# fx
scoreboard players set #block_fx pc.main 0
function pc:fx/text/use {text:{text:"Parrying",color:"#e665e6"}}
function pc:item/skill/parrying/blocked/fx