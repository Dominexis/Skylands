
function pc:sys/combat/clear
scoreboard players set $combat.start pc.game 1
scoreboard players set $combat.round pc.game 0
scoreboard players set #index pc.entity.id 0

function pc:sys/combat/start/2 with storage pc:game combat.coord
execute as @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/combat/start/player/use with storage pc:game combat.coord