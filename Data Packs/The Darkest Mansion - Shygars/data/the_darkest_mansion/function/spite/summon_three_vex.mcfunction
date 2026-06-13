kill @e[type=vex,tag=!Spite]

execute store result storage the_darkest_mansion:summon_coord pos.x int 1 run data get entity @e[tag=Spite,limit=1] Pos[0]
execute store result storage the_darkest_mansion:summon_coord pos.y int 1 run data get entity @e[tag=Spite,limit=1] Pos[1]
execute store result storage the_darkest_mansion:summon_coord pos.z int 1 run data get entity @e[tag=Spite,limit=1] Pos[2]

function the_darkest_mansion:spite/summon_vex with storage the_darkest_mansion:summon_coord pos
function the_darkest_mansion:spite/summon_vex with storage the_darkest_mansion:summon_coord pos
function the_darkest_mansion:spite/summon_vex with storage the_darkest_mansion:summon_coord pos