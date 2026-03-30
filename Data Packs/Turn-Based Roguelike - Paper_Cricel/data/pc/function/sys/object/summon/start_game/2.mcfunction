
# effect
execute store result score #count pc.main run data get entity @s data.lair.id
execute store result score #index pc.main run random value 0..2147483646
execute store result storage pc:temp lair.index int 1 run scoreboard players operation #index pc.main %= #count pc.main
function pc:sys/object/summon/start_game/3 with storage pc:temp lair