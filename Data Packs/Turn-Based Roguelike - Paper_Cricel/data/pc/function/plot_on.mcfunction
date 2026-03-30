## This function runs when the plot turns on

# System
scoreboard objectives add pc.main dummy
scoreboard objectives add pc.duration dummy
scoreboard objectives add pc.object_id dummy
scoreboard objectives add pc.target_id dummy
scoreboard objectives add pc.title dummy
scoreboard objectives add pc.trigger trigger
scoreboard objectives add pc.selected_slot dummy

# Predicate
scoreboard objectives add pc.player.inlobby dummy
scoreboard objectives add pc.player.ingame dummy
scoreboard objectives add pc.object.is_victim dummy
scoreboard objectives add pc.object.is_ally dummy
scoreboard objectives add pc.object.is_mob dummy
scoreboard objectives add pc.object.is_player dummy
scoreboard objectives add pc.object.is_repair dummy
scoreboard objectives add pc.object.is_neutral dummy
scoreboard objectives add pc.object.no_targetable dummy

# Game
scoreboard objectives add pc.hp dummy
scoreboard objectives add pc.hpmax dummy
scoreboard objectives add pc.ep dummy
scoreboard objectives add pc.epmax dummy
scoreboard objectives add pc.epqueue dummy
scoreboard objectives add pc.stat.dmg_dealt dummy
scoreboard objectives add pc.stat.dmg_taken dummy

# FX
scoreboard objectives add pc.fx.debuff dummy
scoreboard objectives add pc.fx.sleep dummy
scoreboard objectives add pc.fx.float_eye dummy

team add pc.red ""
team modify pc.red color red

# Int
scoreboard players set #150 sl.value 150
scoreboard players set #900 sl.value 900
scoreboard players set #4500 sl.value 4500
scoreboard players set #9000 sl.value 9000

# Lobby
schedule function pc:sys/lobby/reset 5t

#say Plot On