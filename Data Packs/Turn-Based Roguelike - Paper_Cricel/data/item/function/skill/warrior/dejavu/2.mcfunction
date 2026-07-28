
data modify storage pc:temp range set value {type:"0",target:"enemy",mode:"victim"}
function sys:grid/range/use

scoreboard players set #damage pc.main 14
function sys:entity/dmg/atker

function sys:grid/range/clear

# fx
particle minecraft:flash{color:[0.933, 0.769, 0.306, 1.000]} ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:item{item:"spyglass"} ~ ~1 ~ 0 0 0 0.25 30 force

particle minecraft:copper_fire_flame ~ ~0.25 ~ 1.0 0 0.0 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.966 0 0.259 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.866 0 0.5 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.707 0 0.707 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.5 0 0.866 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.259 0 0.966 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.0 0 1.0 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.259 0 0.966 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.5 0 0.866 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.707 0 0.707 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.866 0 0.5 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.966 0 0.259 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -1.0 0 0.0 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.966 0 -0.259 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.866 0 -0.5 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.707 0 -0.707 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.5 0 -0.866 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.259 0 -0.966 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ -0.0 0 -1.0 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.259 0 -0.966 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.5 0 -0.866 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.707 0 -0.707 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.866 0 -0.5 0.25 0 force
particle minecraft:copper_fire_flame ~ ~0.25 ~ 0.966 0 -0.259 0.25 0 force