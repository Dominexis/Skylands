
scoreboard players add #temp pc.hp 1

function pc:sys/entity/infobar/hpbar/type

execute if score #temp pc.hp matches ..9 run function pc:sys/entity/infobar/hpbar/loop