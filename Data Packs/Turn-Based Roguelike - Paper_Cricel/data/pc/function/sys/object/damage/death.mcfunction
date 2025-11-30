
# effect
scoreboard players set #undyne pc.main 0
function pc:sys/object/passive/use {type:on_death}
execute if score #undyne pc.main matches 1 run return fail

    # Atker
execute as @e[predicate=pc:object/all,type=!player,tag=pc.sys.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/passive/use {type:on_kill}

    # Victim
function pc:sys/object/intent/kill
function pc:sys/object/intent/icon/self/clear
function pc:void

    # System
function pc:sys/object/turn/clear
execute unless score $game.combat.start pc.main matches 1 run return fail
execute unless entity @e[predicate=pc:object/mob,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/game/combat/end/win/use
execute unless entity @e[predicate=pc:object/ally_player,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/game/combat/end/lose/use