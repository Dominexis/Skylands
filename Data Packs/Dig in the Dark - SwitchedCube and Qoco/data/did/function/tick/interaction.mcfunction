execute at @s on target run function did:misc/lighter_use
data remove entity @s interaction

execute at @s on attacker unless score @s did.player.id = @n[type=interaction, tag=did.torch.interact,distance=..0.1] did.player.id run return fail

execute on attacker run scoreboard players set @s did.player.torch.placed 0

execute at @s align xyz positioned ~0.5 ~1 ~0.5 if data entity @s[tag=did.torch.interact] attack run playsound block.wood.break block @a[team=sl.player,distance=..40] ~ ~ ~
execute at @s align xyz positioned ~0.5 ~1 ~0.5 if data entity @s[tag=did.torch.interact] attack if block ~ ~ ~ light[level=15] run setblock ~ ~ ~ air
execute at @s align xyz positioned ~0.5 ~1 ~0.5 if data entity @s[tag=did.torch.interact] attack run kill @n[type=item_display, tag=did.torch.display,distance=..0.5]
execute at @s align xyz positioned ~0.5 ~1 ~0.5 if data entity @s[tag=did.torch.interact] attack run kill @s