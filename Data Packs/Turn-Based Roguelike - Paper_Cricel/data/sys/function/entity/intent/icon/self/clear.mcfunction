
execute on passengers if entity @s[tag=pc.intent.icon.self,tag=!pc.intent.icon.clear] run function sys:entity/intent/icon/clear/use
execute as @e[tag=pc.intent.icon.grid,tag=!pc.intent.icon.clear,type=minecraft:text_display] at @s run function sys:entity/intent/icon/clear/use