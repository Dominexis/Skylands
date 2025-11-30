## This function runs as and at a player when they log into the plot

# effect
scoreboard players set @s pc.player.inlobby 1
scoreboard players reset @s pc.player.ingame
effect give @s minecraft:resistance infinite 4 true
attribute @s minecraft:safe_fall_distance base set 1024
attribute @s minecraft:entity_interaction_range base set 1024

# fx
scoreboard players set @s pc.title 100
title @s times 0 80 20
title @s title ["",{text:"◇ ",color:"#983CC6",type:"text"},{text:"VitreArena",color:"gold",type:"text"},{text:" ◇",color:"#983CC6",type:"text"}]
title @s subtitle {text:"By 紙圓 (Paper_Cricel)",color:"white",type:"text"}
playsound minecraft:block.respawn_anchor.charge master @s ~ ~ ~ 1 0.25
playsound minecraft:block.amethyst_cluster.place master @s

#say Login