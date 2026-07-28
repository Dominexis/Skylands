
function sys:combat/start/summon/use
playsound minecraft:item.goat_horn.sound.0 master @a ~ ~1024 ~ 0 1 1

execute if data storage pc:settings gameplay{tutorial:1b} if score $level pc.game matches 0 run return run schedule function sys:combat/tutorial/use 2s
function sys:combat/round