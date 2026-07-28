
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'ally'}
function sys:grid/range/use

data modify storage pc:temp effect set value {id:'vulnerable',value:2}
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function sys:effect/apply

function sys:grid/range/clear

# fx
playsound minecraft:entity.zoglin.angry master @a ~ ~1024 ~ 0 1.25 0.5
playsound minecraft:entity.hoglin.step master @a ~ ~1024 ~ 0 0 1
playsound minecraft:block.iron.break master @a ~ ~1024 ~ 0 1.25 1
playsound minecraft:block.iron.break master @a ~ ~1024 ~ 0 1.25 1
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~1024 ~ 0 1 0.1

particle minecraft:flame ~ ~0.25 ~ 1.0 0 0.0 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.944 0 0.096 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.889 0 0.192 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.833 0 0.289 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.778 0 0.385 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.722 0 0.481 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.667 0 0.577 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.611 0 0.674 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.556 0 0.77 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.5 0 0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.389 0 0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.278 0 0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.167 0 0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.056 0 0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.056 0 0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.167 0 0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.278 0 0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.389 0 0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.5 0 0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.556 0 0.77 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.611 0 0.674 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.667 0 0.577 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.722 0 0.481 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.778 0 0.385 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.833 0 0.289 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.889 0 0.192 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.944 0 0.096 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -1.0 0 0.0 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.944 0 -0.096 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.889 0 -0.192 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.833 0 -0.289 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.778 0 -0.385 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.722 0 -0.481 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.667 0 -0.577 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.611 0 -0.674 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.556 0 -0.77 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.5 0 -0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.389 0 -0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.278 0 -0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.167 0 -0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ -0.056 0 -0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.056 0 -0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.167 0 -0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.278 0 -0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.389 0 -0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.5 0 -0.866 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.556 0 -0.77 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.611 0 -0.674 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.667 0 -0.577 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.722 0 -0.481 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.778 0 -0.385 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.833 0 -0.289 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.889 0 -0.192 0.25 0 force
particle minecraft:flame ~ ~0.25 ~ 0.944 0 -0.096 0.25 0 force

particle instant_effect{color:[0.949, 0.498, 0.235],power:1} ~ ~0.5 ~ 0.4 1.2 0.4 10 25 force