
place template sys:loot_chest ~-1 ~ ~-1
execute positioned ~ ~2 ~ as 20060423-0-0-0-0 run function sys:combat/end/win/chest/2 with storage pc:game combat.reward

# fx
particle minecraft:dust_color_transition{from_color:[0.329,0.302,0.298],scale:4.0f,to_color:[0.941,0.859,0.714]} ~ ~1 ~ 1 1 1 0 200 force
execute as @a at @s run playsound minecraft:block.chest.open master @s ~ ~1024 ~ 0 1 1