
# effect
data modify storage pc:temp repair set value {item:"heal_liquor",value:-1,is_max:1b}
function pc:sys/item/durability/use

scoreboard players operation #damage pc.main = @s pc.hpmax
scoreboard players operation #damage pc.main /= #4 sl.value
data modify storage pc:temp damage set value {is_heal:1b}
function pc:sys/object/damage/victim
data remove storage pc:temp damage

# fx
playsound minecraft:block.note_block.chime master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1
playsound minecraft:entity.generic.drink master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0.75
playsound minecraft:block.brewing_stand.brew master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 2