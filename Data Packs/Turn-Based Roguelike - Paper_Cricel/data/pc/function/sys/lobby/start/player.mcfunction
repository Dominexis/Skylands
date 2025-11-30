
# effect
scoreboard players reset @s pc.player.inlobby
scoreboard players set @s pc.player.ingame 1

scoreboard players set @s pc.stat.dmg_dealt 0
scoreboard players set @s pc.stat.dmg_taken 0

effect give @s night_vision infinite 0 true
attribute @s minecraft:entity_interaction_range base set 0

# fx
title @s times 0 0 20
title @s title {text:"A",font:"sl:fade"}
playsound minecraft:entity.warden.attack_impact master @s ~ ~ ~ 1 0 1