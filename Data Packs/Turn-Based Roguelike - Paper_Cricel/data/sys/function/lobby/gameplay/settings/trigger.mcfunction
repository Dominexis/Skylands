
execute if score @s pc.trigger matches 10002 run return run function sys:lobby/gameplay/settings/lang/use {lang:'en_us'}
execute if score @s pc.trigger matches 10003 run return run function sys:lobby/gameplay/settings/lang/use {lang:'zh_tw'}
execute if score @s pc.trigger matches 10004 run return run function sys:lobby/gameplay/settings/lang/use {lang:'zh_cn'}

execute if score @s pc.trigger matches 10001 store success storage pc:settings gameplay.tutorial byte 1 unless data storage pc:settings gameplay{tutorial:1b}
function sys:lobby/gameplay/settings/ascension/trigger

function sys:lobby/gameplay/settings/refresh

