
scoreboard players add #temp pc.hp 1

function sys:entity/infobar/hpbar/type

execute if score #temp pc.hp matches ..9 run function sys:entity/infobar/hpbar/loop