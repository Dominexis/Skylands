scoreboard objectives add hint dummy
$execute store result score used hint run data get storage minecraft:hint $(level)[$(hintnum)]
$execute at @e[tag=$(level),tag=sol] if block ~ ~ ~ minecraft:$(color)_wool run setblock ~ ~ ~ air
$execute at @e[tag=$(level),tag=sol$(hintnum)] run setblock ~ ~ ~ minecraft:$(color)_wool destroy
$execute at @e[tag=$(level),tag=ORIGIN] run tp @n[type=item] @p
$execute unless score used hint matches 1 run clear @a[distance=..256] minecraft:$(color)_wool 1
execute unless score used hint matches 1 run clear @a[distance=..256] minecraft:paper 1
execute unless score used hint matches 1 run playsound minecraft:block.enchantment_table.use block @a[distance=..256] ~ ~ ~
$data modify storage minecraft:hint $(level)[$(hintnum)] set value 1
scoreboard objectives remove hint