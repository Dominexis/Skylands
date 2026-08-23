## This function runs when the plot turns on

# System
scoreboard objectives add pc.main dummy
scoreboard objectives add pc.game dummy
scoreboard objectives add pc.duration dummy
scoreboard objectives add pc.entity.id dummy
scoreboard objectives add pc.target.id dummy
scoreboard objectives add pc.origin.id dummy
scoreboard objectives add pc.trigger trigger
scoreboard objectives add pc.thread_index dummy

scoreboard objectives add pc.title dummy
scoreboard objectives add pc.animation dummy

team add pc.red ""
team modify pc.red color red

team add pc.yellow ""
team modify pc.yellow color yellow

team add pc.utils.button ""
team add pc.utils.button.click ""

# 20060423-0-0-0-0
summon marker 2536 63 5608 {UUID:[I;537265187,0,0,0]}
# 20060423-0-0-0-1
summon item_display 2536 63 5608 {UUID:[I;537265187,0,0,1],view_range:0}
# 20060423-0-0-1-1 Store Player's SelectedItem
summon item_display 2536 63 5608 {UUID:[I;537265187,0,65536,1],view_range:0}
# 20060423-0-0-0-2
summon text_display 2536 63 5608 {UUID:[I;537265187,0,0,2],view_range:0}

function pc:sys/lang/en_us

# Predicate
scoreboard objectives add pc.player.inlobby dummy
scoreboard objectives add pc.player.incombat dummy
scoreboard objectives add pc.player.ingame dummy

scoreboard objectives add pc.entity.inturn dummy
scoreboard objectives add pc.entity.victim dummy
scoreboard objectives add pc.entity.ally dummy
scoreboard objectives add pc.entity.enemy dummy
scoreboard objectives add pc.entity.player dummy
scoreboard objectives add pc.entity.repair dummy
scoreboard objectives add pc.entity.repairer dummy "The entity who can active Anvil's Repair Mode."
scoreboard objectives add pc.entity.untargetable dummy

scoreboard objectives add pc.grid.nearest dummy
scoreboard objectives add pc.grid.depth dummy "BFS depth of a grid cell while pathfinding."
scoreboard objectives add pc.grid.selector dummy

# Game
scoreboard objectives add pc.hp dummy
scoreboard objectives add pc.hpmax dummy
scoreboard objectives add pc.ep dummy
scoreboard objectives add pc.epmax dummy
scoreboard objectives add pc.damage dummy
scoreboard objectives add pc.shield dummy
scoreboard objectives add pc.stat.dmg_dealt dummy
scoreboard objectives add pc.stat.dmg_taken dummy

# FX
scoreboard objectives add pc.fx.debuff dummy
scoreboard objectives add pc.fx.sleep dummy
scoreboard objectives add pc.fx.iron_resolve dummy

# Int
scoreboard players set #12 sl.value 12
scoreboard players set #14 sl.value 14
scoreboard players set #150 sl.value 150
scoreboard players set #900 sl.value 900
scoreboard players set #4500 sl.value 4500
scoreboard players set #9000 sl.value 9000

# Lobby
schedule function pc:sys/lobby/reset 5t

# say Plot On