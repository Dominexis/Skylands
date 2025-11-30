## This function runs as and at a player when they log into the plot

# effect
scoreboard players set @s pc.player.inlobby 1
scoreboard players reset @s pc.player.ingame
effect give @s resistance infinite 4 true
attribute @s safe_fall_distance base set 1024
attribute @s entity_interaction_range base set 1024

# fx 
scoreboard players set @s pc.title 100
title @s times 0 80 20
title @s title ["",{text:"◇ ",color:"#983cc6"},{text:"VitreArena",color:"gold"},{text:" ◇",color:"#983cc6"}]
title @s subtitle {text:"By 紙圓 (Paper_Cricel)",color:"white"}
playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 0.25
playsound minecraft:block.amethyst_cluster.place master @s

#say Login