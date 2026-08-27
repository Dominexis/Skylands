# As : player
##

# Player damage
execute store result storage synb.d:tmp args.dmg int 1 run scoreboard players get @s synb.IEPlayer.DamageTaken
function synb:itemengine/player/damage_player with storage synb.d:tmp args
scoreboard players reset @s synb.IEPlayer.DamageTaken

# General tick
execute if score t2 synb.TickCycle matches 1 run function synb:itemengine/mod/htick_stats
function synb:itemengine/mod/tick_attr
execute if score t2 synb.TickCycle matches 1 run function synb:itemengine/mod/inv/htick_inv

# Regen
effect give @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,scores={synb.IEPlayer.RegenTime=1..}] minecraft:regeneration infinite 5 true
execute if score @s synb.IEPlayer.RegenTime matches 0 run effect clear @s minecraft:regeneration
execute if score @s synb.IEPlayer.RegenTime matches 1.. run scoreboard players remove @s synb.IEPlayer.RegenTime 1

# Items
execute if score t2 synb.TickCycle matches 1 run function synb:itemengine/executor/run {func:"htick"}

# OTHER INVENTORY CELLS

execute unless items entity @s player.cursor minecraft:prismarine_crystals run item replace entity @s player.cursor with minecraft:air

scoreboard players set #inv synb.Tmp.Expr 0
execute if entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run scoreboard players set #inv synb.Tmp.Expr 1
execute if score #inv synb.Tmp.Expr matches 1 run function synb:itemengine/mod/_apply_armor_inv
execute if score #inv synb.Tmp.Expr matches 0 run function synb:itemengine/mod/_apply_armor

execute unless items entity @s player.crafting.0 minecraft:prismarine_crystals run item replace entity @s player.crafting.0 with minecraft:air
execute unless items entity @s player.crafting.1 minecraft:prismarine_crystals run item replace entity @s player.crafting.1 with minecraft:air
execute unless items entity @s player.crafting.2 minecraft:prismarine_crystals run item replace entity @s player.crafting.2 with minecraft:air
execute unless items entity @s player.crafting.3 minecraft:prismarine_crystals run item replace entity @s player.crafting.3 with minecraft:air
execute unless items entity @s hotbar.2 minecraft:prismarine_crystals run item replace entity @s hotbar.2 with minecraft:air
execute unless items entity @s hotbar.3 minecraft:prismarine_crystals run item replace entity @s hotbar.3 with minecraft:air
execute unless items entity @s hotbar.4 minecraft:prismarine_crystals run item replace entity @s hotbar.4 with minecraft:air
execute unless items entity @s hotbar.5 minecraft:prismarine_crystals run item replace entity @s hotbar.5 with minecraft:air
execute unless items entity @s hotbar.6 minecraft:prismarine_crystals run item replace entity @s hotbar.6 with minecraft:air