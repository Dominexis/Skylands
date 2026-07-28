
scoreboard players set #pass pc.main 1
execute as @a[predicate=sys:player/ingame] at @s run function sys:rest_area/start_button/on_click/2
return run scoreboard players get #pass pc.main