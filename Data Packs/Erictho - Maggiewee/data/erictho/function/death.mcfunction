# kills player
#roll random number; 1-10
#if certain number, then play witch laugh
execute store result score @s erictho_rng run random value 1..10
execute if score @s erictho_rng matches 7 run playsound entity.witch.celebrate block @s ~ ~ ~ 10 0.1

#kill player and reset
kill @s
tag @s remove nether
tag @s remove resin
tag @s remove blackstone
tag @s remove gilded
tag @s remove shroom
scoreboard players set @s erictho_rng 0
scoreboard players set @s erictho_damage 20