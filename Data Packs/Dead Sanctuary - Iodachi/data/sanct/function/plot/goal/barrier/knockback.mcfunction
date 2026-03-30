title @s actionbar "§eYou must be §aLevel 30§e to pass the barrier"
playsound minecraft:block.beacon.power_select player @a[distance=..16] -2318 83 2309 1 1.5
scoreboard players set #barrier_particle sanct.numbers 1

advancement revoke @s only sanct:barrier_knockback