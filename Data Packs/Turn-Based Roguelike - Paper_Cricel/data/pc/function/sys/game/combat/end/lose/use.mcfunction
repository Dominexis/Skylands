
scoreboard players reset $game.start pc.main
scoreboard players reset $game.combat.start pc.main
scoreboard players reset $game.acting_time pc.main

clear @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] paper[custom_data~{pc:{category:end_turn}}]

schedule function pc:sys/game/combat/end/lose/2 1.5s