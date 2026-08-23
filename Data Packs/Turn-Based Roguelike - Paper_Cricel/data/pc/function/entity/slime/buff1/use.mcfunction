
data modify storage pc:temp effect set value {id:'strength',value:2}
function pc:sys/effect/apply
function pc:sys/combat/turn/end_act

# fx
particle minecraft:happy_villager ~ ~ ~ 0.4 0.4 0.4 0 5 force
playsound minecraft:block.amethyst_block.resonate master @a ~ ~1024 ~ 0 0 1