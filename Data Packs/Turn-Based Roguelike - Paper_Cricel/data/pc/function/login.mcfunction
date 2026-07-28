## This function runs as and at a player when they log into the plot

scoreboard players set @s pc.player.inlobby 1
scoreboard players reset @s pc.player.ingame
effect give @s minecraft:resistance infinite 4 true
attribute @s minecraft:safe_fall_distance base set 1024
attribute @s minecraft:entity_interaction_range base set 1024

# fx
scoreboard players set @s pc.title 100
title @s times 0 80 20
title @s title {nbt:"sys.ui.login_title",storage:"pc:lang",interpret:1b}
title @s subtitle {nbt:"sys.ui.login_subtitle",storage:"pc:lang",interpret:1b,type:"nbt"}
playsound minecraft:block.respawn_anchor.charge master @s ~ ~1024 ~ 0 0.25 1
playsound minecraft:block.amethyst_cluster.place master @s ~ ~1024 ~ 0 1 1

# say Login