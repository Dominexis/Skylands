
# effect
function pc:sys/player/select/mob/clear

tag @s add pc.select.object
function pc:sys/player/select/mob/red/use
execute on passengers at @s run function pc:sys/player/select/mob/red/use

function pc:sys/player/select/mob/summon