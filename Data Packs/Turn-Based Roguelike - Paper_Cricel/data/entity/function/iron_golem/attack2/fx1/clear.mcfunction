
execute as @e[tag=pc.intent.now,type=marker] at @s positioned ~ ~30 ~ run function entity:iron_golem/attack2/fx2/use

kill @s

# fx
playsound sys:cartoon_fall master @a ~ ~1024 ~ 0 1 0.5