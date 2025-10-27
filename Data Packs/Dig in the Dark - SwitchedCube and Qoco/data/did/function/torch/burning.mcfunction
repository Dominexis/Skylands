execute if score @s did.player.torch_burn_time matches 1.. if items entity @s weapon.offhand *[minecraft:custom_data~{did:{torch:1}}] run function did:torch/light

execute if score @s did.player.torch_burn_loop matches 1.. run scoreboard players remove @s did.player.torch_burn_loop 1
execute if score @s did.player.torch_burn_loop matches 0 if score @s did.player.torch_burn_time matches 1 at @s run playsound minecraft:block.fire.extinguish hostile @a[distance=..40,team=sl.player] ~ ~ ~
execute if score @s did.player.torch_burn_loop matches 0 if score @s did.player.torch_burn_time matches 1.. run scoreboard players remove @s did.player.torch_burn_time 1
execute if score @s did.player.torch_burn_loop matches 0 if items entity @s container.* *[minecraft:custom_data~{did:{torch-all:1}}] unless items entity @s weapon.* *[minecraft:custom_data~{did:{torch-all:1}}] run scoreboard players set @s did.player.torch_burn_loop 3
execute if score @s did.player.torch_burn_loop matches 0 run scoreboard players set @s did.player.torch_burn_loop 2
