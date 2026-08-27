## This function runs when the plot turns off

# Game & Lobby
function pc:sys/lobby/end/clear
execute as @e[tag=pc.lobby,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:sys/void
data remove storage pc:settings map
data remove storage pc:settings gameplay
data remove storage pc:settings lang
data remove storage pc:utils data
data remove storage pc:utils local_thread
function pc:sys/lang/reset

team remove pc.red
team remove pc.yellow
team remove pc.utils.button
team remove pc.utils.button.click
kill 20060423-0-0-0-0
kill 20060423-0-0-0-1
kill 20060423-0-0-1-1
kill 20060423-0-0-0-2

# Player
execute as @a[predicate=pc:sys/player/inplot,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:logout

# say Plot Off

# [Converted] auto-added for Pack Tester compliance (schedule clears / objective cleanup)
schedule clear pc:sys/lobby/reset
schedule clear pc:sys/combat/time
schedule clear pc:sys/rest_area/start_button/summon/3
schedule clear pc:sys/player/title/tutorial/main
schedule clear pc:sys/lobby/start/2
schedule clear pc:sys/grid/space/summon/2
schedule clear pc:sys/combat/start/2b
schedule clear pc:sys/combat/start/3
schedule clear pc:sys/combat/tutorial/use
schedule clear pc:sys/combat/round
schedule clear pc:sys/combat/tutorial/rc/clear
schedule clear pc:sys/combat/turn/3
schedule clear pc:sys/combat/turn/ally/next
schedule clear pc:sys/combat/turn/enemy/next
schedule clear pc:sys/combat/turn/2
schedule clear pc:sys/combat/end/lose/use
schedule clear pc:sys/combat/end/lose/2
schedule clear pc:sys/combat/end/win/use
scoreboard objectives remove pc.player.inlobby
scoreboard objectives remove pc.player.ingame
scoreboard objectives remove pc.title
scoreboard objectives remove pc.main
scoreboard objectives remove pc.game
scoreboard objectives remove pc.duration
scoreboard objectives remove pc.entity.id
scoreboard objectives remove pc.target.id
scoreboard objectives remove pc.origin.id
scoreboard objectives remove pc.trigger
scoreboard objectives remove pc.thread_index
scoreboard objectives remove pc.animation
scoreboard objectives remove pc.player.incombat
scoreboard objectives remove pc.entity.inturn
scoreboard objectives remove pc.entity.victim
scoreboard objectives remove pc.entity.ally
scoreboard objectives remove pc.entity.enemy
scoreboard objectives remove pc.entity.player
scoreboard objectives remove pc.entity.repair
scoreboard objectives remove pc.entity.repairer
scoreboard objectives remove pc.entity.untargetable
scoreboard objectives remove pc.grid.nearest
scoreboard objectives remove pc.grid.depth
scoreboard objectives remove pc.grid.selector
scoreboard objectives remove pc.hp
scoreboard objectives remove pc.hpmax
scoreboard objectives remove pc.ep
scoreboard objectives remove pc.epmax
scoreboard objectives remove pc.damage
scoreboard objectives remove pc.shield
scoreboard objectives remove pc.stat.dmg_dealt
scoreboard objectives remove pc.stat.dmg_taken
scoreboard objectives remove pc.fx.debuff
scoreboard objectives remove pc.fx.sleep
scoreboard objectives remove pc.fx.iron_resolve
