## This function runs when the plot turns off

# Game & Lobby
function pc:sys/lobby/end/clear
execute as @e[tag=pc.lobby,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:void

# Player
execute as @a[predicate=pc:player/inplot,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:logout

# Data
    # System
scoreboard objectives remove pc.main
scoreboard objectives remove pc.duration
scoreboard objectives remove pc.object_id
scoreboard objectives remove pc.target_id
scoreboard objectives remove pc.title
scoreboard objectives remove pc.trigger
scoreboard objectives remove pc.selected_slot

    # Predicate
scoreboard objectives remove pc.player.inlobby
scoreboard objectives remove pc.player.ingame
scoreboard objectives remove pc.object.is_victim
scoreboard objectives remove pc.object.is_ally
scoreboard objectives remove pc.object.is_mob
scoreboard objectives remove pc.object.is_player
scoreboard objectives remove pc.object.is_repair
scoreboard objectives remove pc.object.is_neutral
scoreboard objectives remove pc.object.no_targetable

    # Game
scoreboard objectives remove pc.hp
scoreboard objectives remove pc.hpmax
scoreboard objectives remove pc.ep
scoreboard objectives remove pc.epmax
scoreboard objectives remove pc.epqueue
scoreboard objectives remove pc.stat.dmg_dealt
scoreboard objectives remove pc.stat.dmg_taken

    # FX
scoreboard objectives remove pc.fx.debuff
scoreboard objectives remove pc.fx.sleep
scoreboard objectives remove pc.fx.float_eye

data remove storage pc:settings map
data remove storage pc:settings gameplay
data remove storage pc:data id
data remove storage pc:data root

team remove pc.red
function pc:sys/lang/reset

    # TEMP schedule
schedule clear pc:sys/lobby/reset
schedule clear pc:sys/object/turn/use
schedule clear pc:sys/player/select/space/summon/2
schedule clear pc:sys/object/walk/object/act/schedule
schedule clear pc:sys/object/turn/ally/use
schedule clear pc:sys/object/turn/ally/clear
schedule clear pc:sys/object/turn/mob/use
schedule clear pc:sys/object/turn/mob/clear
schedule clear pc:sys/game/combat/time
schedule clear pc:sys/lobby/start/2
schedule clear pc:sys/game/rest_area/start_button/3
schedule clear pc:sys/game/combat/start/tutorial
schedule clear pc:sys/game/combat/start/3
schedule clear pc:sys/lobby/end/use
schedule clear pc:sys/game/combat/end/lose/2
schedule clear pc:sys/game/combat/end/win/2
schedule clear pc:passive/shield/tutorial
schedule clear pc:item/repair/basic/tutorial

#say Plot Off