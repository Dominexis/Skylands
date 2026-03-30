
summon minecraft:wolf -2311 67 2302 {Tags:["sanct.goal_path"],attributes:[{id:"minecraft:follow_range",base:80},{id:"minecraft:scale",base:0.8},{id:"minecraft:movement_speed",base:0.4}],active_effects:[{id:"minecraft:invisibility",duration:10,show_particles:0b}],Invulnerable:1b,Silent:1b,AngerTime:2147483647,Team:"sanct.goal_path",variant:"minecraft:black"}

data modify entity @e[type=minecraft:wolf,tag=sanct.goal_path,x=-2310.5,y=67,z=2302.5,distance=..0.1,limit=1] AngryAt set from storage sanct:storage root.goal_path_destination[0].AngryAt

tp @e[type=minecraft:wolf,tag=sanct.goal_path,x=-2310.5,y=67,z=2302.5,distance=..0.1,limit=1] ~ ~ ~

# Decrease delay until next wolf spawn
execute unless score #goal_path_delay sanct.numbers matches 28.. run scoreboard players set #var sanct.numbers 2
execute if score #goal_path_delay sanct.numbers matches 28.. store result score #var sanct.numbers run random value -10..-3
execute store result score #goal_path sanct.numbers run scoreboard players operation #goal_path_delay sanct.numbers += #var sanct.numbers