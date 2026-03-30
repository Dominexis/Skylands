scoreboard players add @a[x=-2309.5,y=7,z=2307.5,distance=..1,predicate=sl:player] sanct.respawn_timer 1
execute as @a[x=-2309.5,y=7,z=2307.5,distance=..1,predicate=sl:player,scores={sanct.respawn_timer=9..}] run function sanct:player/death/respawn/respawn
execute if entity @a[x=-2309.5,y=7,z=2307.5,distance=..1,predicate=sl:player,limit=1] run schedule function sanct:player/death/clock 5