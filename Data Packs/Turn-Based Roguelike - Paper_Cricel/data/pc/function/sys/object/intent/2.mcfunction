
# effect
data modify entity @s data.intent.type set value []
$function pc:object/$(id)/intent

execute store result score #count pc.main run data get entity @s data.intent.type
execute store result score #index pc.main run random value 0..2147483646

# Random Intent
execute store result entity @s data.intent.roll int 1 run scoreboard players operation #index pc.main %= #count pc.main
function pc:sys/object/intent/3 with entity @s data.intent

# No Intent
execute if data entity @s data.effect.stone_form run data remove entity @s data.intent