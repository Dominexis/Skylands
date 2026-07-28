
function sys:combat/clear
scoreboard players set $combat.start pc.game 1
scoreboard players set $combat.round pc.game 0
scoreboard players set #index pc.entity.id 0

function sys:combat/start/2 with storage pc:game combat.coord
execute as @a at @s run function sys:combat/start/player/use with storage pc:game combat.coord