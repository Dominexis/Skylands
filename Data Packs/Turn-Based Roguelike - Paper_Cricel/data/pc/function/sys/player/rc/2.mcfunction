
# effect
tag @s add pc.player.now

execute store success score #pass pc.main run function pc:sys/player/rc/3
execute if score #pass pc.main matches 1 run function pc:sys/player/rc/4 with storage pc:temp rc.now