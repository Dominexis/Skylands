# kills player
#roll random number; 1-10
#if certain number, then play witch laugh
execute store result score @s erictho.rng run random value 1..10
execute if score @s erictho.rng matches 7 run playsound entity.witch.celebrate block @s ~ ~ ~ 10 0.1

#kill player and reset
kill @s
tag @s remove erictho.blackstone
tag @s remove erictho.gilded
tag @s remove erictho.nether
tag @s remove erictho.resin
tag @s remove erictho.shroom
scoreboard players set @s erictho.rng 0
scoreboard players set @s erictho.damage 20