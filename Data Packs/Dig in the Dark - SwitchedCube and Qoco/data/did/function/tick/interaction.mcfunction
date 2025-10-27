execute at @s on target run function did:misc/lighter_use
data remove entity @s interaction

execute at @s on attacker unless score @s did.player.id = @n[type=minecraft:interaction,distance=..0.1,tag=did.torch.interact] did.player.id run return fail

execute on attacker run scoreboard players set @s did.player.torch.placed 0

execute at @s align xyz positioned ~0.5 ~1 ~0.5 if data entity @s[tag=did.torch.interact] attack run playsound minecraft:block.wood.break block @a[distance=..40,team=sl.player] ~ ~ ~
execute at @s align xyz positioned ~0.5 ~1 ~0.5 if data entity @s[tag=did.torch.interact] attack if block ~ ~ ~ minecraft:light[level=15] run setblock ~ ~ ~ minecraft:air
execute at @s align xyz positioned ~0.5 ~1 ~0.5 if data entity @s[tag=did.torch.interact] attack run kill @n[type=minecraft:item_display,distance=..0.5,tag=did.torch.display]
execute at @s align xyz positioned ~0.5 ~1 ~0.5 if data entity @s[tag=did.torch.interact] attack run kill @s