setblock ~ ~ ~ smooth_sandstone
scoreboard players set @s did.sand.random 0
execute if predicate {"condition":"minecraft:random_chance","chance":0.2} store result score @s did.sand.random run random value 1..6
execute if score @s did.sand.random matches 1 run summon skeleton ~ ~1 ~ {Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 2 run summon zombie ~ ~1 ~ {Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 3 run summon cave_spider ~ ~1 ~ {Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 4 run summon husk ~ ~1 ~ {Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 5 run summon spider ~ ~1 ~ {Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 6 run summon slime ~ ~1 ~ {Size:0,Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 6 run summon slime ~ ~1 ~ {Size:0,Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 6 run summon slime ~ ~1 ~ {Size:0,Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 6 run summon slime ~ ~1 ~ {Size:0,Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 6 run summon slime ~ ~1 ~ {Size:0,Tags:["did.mob.enemy"],DeathLootTable:"did:empty"}
execute if score @s did.sand.random matches 1.. run playsound block.trial_spawner.spawn_mob hostile @a[team=sl.player,distance=..40] ~ ~ ~
kill @s