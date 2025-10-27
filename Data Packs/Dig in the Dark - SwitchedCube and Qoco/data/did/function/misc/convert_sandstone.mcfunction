setblock ~ ~ ~ minecraft:smooth_sandstone
scoreboard players set @s did.sand.random 0
execute if predicate {"condition": "minecraft:random_chance", "chance": 0.2} store result score @s did.sand.random run random value 1..6
execute if score @s did.sand.random matches 1 run summon minecraft:skeleton ~ ~1 ~ {Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 2 run summon minecraft:zombie ~ ~1 ~ {Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 3 run summon minecraft:cave_spider ~ ~1 ~ {Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 4 run summon minecraft:husk ~ ~1 ~ {Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 5 run summon minecraft:spider ~ ~1 ~ {Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 6 run summon minecraft:slime ~ ~1 ~ {Size:0,Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 6 run summon minecraft:slime ~ ~1 ~ {Size:0,Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 6 run summon minecraft:slime ~ ~1 ~ {Size:0,Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 6 run summon minecraft:slime ~ ~1 ~ {Size:0,Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 6 run summon minecraft:slime ~ ~1 ~ {Size:0,Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 1.. run playsound minecraft:block.trial_spawner.spawn_mob hostile @a[distance=..40,team=sl.player] ~ ~ ~
kill @s