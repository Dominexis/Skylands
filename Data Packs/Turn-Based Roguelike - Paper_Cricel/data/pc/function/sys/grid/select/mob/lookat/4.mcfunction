
function pc:sys/grid/select/mob/clear

tag @s add pc.select.object
function pc:sys/grid/select/mob/red/use
execute on passengers at @s run function pc:sys/grid/select/mob/red/use

execute at @s run function pc:sys/grid/select/mob/summon