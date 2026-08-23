
data modify storage pc:temp effect set value {id:'vulnerable',value:2}
function pc:sys/effect/apply

# fx
particle minecraft:entity_effect{color:[0.263, 0.204, 0.357, 1.000]} ~ ~1 ~ 0.3 0.5 0.3 0.5 20 force
playsound minecraft:entity.bee.hurt master @a ~ ~1024 ~ 0 0 1