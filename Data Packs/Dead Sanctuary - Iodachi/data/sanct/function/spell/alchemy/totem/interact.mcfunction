execute if entity @s[advancements={sanct:spell/totem/interact={attack=true}}] as @e[type=minecraft:interaction,tag=sanct.totem,distance=..10] if data entity @s attack at @s run function sanct:spell/alchemy/totem/break
execute if entity @s[advancements={sanct:spell/totem/interact={interact=true}}] as @e[type=minecraft:interaction,tag=sanct.totem,distance=..10] if data entity @s interaction at @s run function sanct:spell/alchemy/totem/break

advancement revoke @s only sanct:spell/totem/interact