
execute if entity @s[tag=pc.shield.buffer] run return fail

tag @s add pc.shield.buffer
scoreboard players remove @s pc.shield 5
execute if score @s pc.shield matches ..-1 run scoreboard players reset @s pc.shield