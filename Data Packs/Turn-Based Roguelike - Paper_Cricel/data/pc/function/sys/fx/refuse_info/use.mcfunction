
# fx
title @s times 0 20 10
function pc:sys/player/title/empty
$title @s subtitle $(text)
execute at @s run playsound minecraft:block.note_block.banjo master @s ~ ~1024 ~ 0 0 1