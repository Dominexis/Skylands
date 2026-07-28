
tag @s add pc.void

execute on passengers unless entity @s[tag=pc.void] run function sys:void
execute on vehicle unless entity @s[tag=pc.void] run function sys:void

tp ~ -255 ~
scoreboard players reset @s
kill @s