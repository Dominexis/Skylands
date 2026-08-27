execute if entity @e[x=-2318.0,y=62,z=2319.0,distance=..0.0000001,type=minecraft:item,tag=sanct.altar_crafted] run return 1

scoreboard players set #altar_requires_reset sanct.numbers 0

clone -2318 59 2318 -2319 59 2319 -2319 61 2318
execute positioned -2318.0 62 2319.0 run playsound minecraft:entity.breeze.shoot block @a[distance=..16] ~ ~ ~ 1 0

summon minecraft:glow_item_frame -2319 62 2318 {Invulnerable:1b,ItemRotation:4b,Facing:1b,Tags:["sanct.altar","sl.processed"]}
summon minecraft:glow_item_frame -2318 62 2318 {Invulnerable:1b,ItemRotation:4b,Facing:1b,Tags:["sanct.altar","sl.processed"]}
summon minecraft:glow_item_frame -2319 62 2319 {Invulnerable:1b,ItemRotation:4b,Facing:1b,Tags:["sanct.altar","sl.processed"]}
summon minecraft:glow_item_frame -2318 62 2319 {Invulnerable:1b,ItemRotation:4b,Facing:1b,Tags:["sanct.altar","sl.processed"]}