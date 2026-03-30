
# effect
data modify storage pc:temp repair set value {value:-1,item:'fading_compass'}
function pc:sys/item/durability/get_value

scoreboard players operation #value pc.main = #db pc.main
scoreboard players operation #value pc.main *= #10 sl.value
function pc:passive/shield/use

function pc:sys/item/durability/use

# fx
playsound minecraft:block.beacon.power_select master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2 1
playsound minecraft:block.vault.eject_item master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0.75 1