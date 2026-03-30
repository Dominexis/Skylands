
# effect
execute store success score #loop pc.main if entity @s[tag=pc.select.object]
execute unless score #loop pc.main matches 1 run function pc:sys/player/select/mob/lookat/4