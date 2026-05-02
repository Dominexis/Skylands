#loop part1--------------------

#soul particles
execute at @a[team=erictho_player] run particle minecraft:sculk_soul ~ ~1.5 ~ 0.2 0.2 0.2 0.06 7 normal

#checkpoints
#make sure player cant continue if they dont have the bile in the area before checkpoint

execute at @a[team=erictho_player] if block ~ ~-3 ~ minecraft:redstone_lamp as @a[team=erictho_player] run function erictho:checkpoint/checkpoint

#give a warning when they reach checkpoint (use command block at checkpoint?)
execute at @a[team=erictho_player] if block ~ ~-3 ~ minecraft:bedrock as @a[team=erictho_player] run function erictho:part1/check

#death when touch water
execute at @a[team=erictho_player] if block ~ ~ ~ water as @a[team=erictho_player] run function erictho:death

#play spooksy sound: function erictho:part1/sounds

#interactions that give player bile
execute as @e[type=interaction,nbt={interaction:{}},tag=bile1] at @s run function erictho:part1/bile
execute as @e[type=interaction,nbt={interaction:{}},tag=bile2] at @s run function erictho:part1/bile
execute as @e[type=interaction,nbt={interaction:{}},tag=bile3] at @s run function erictho:part1/bile
execute as @e[type=interaction,nbt={interaction:{}},tag=bile4] at @s run function erictho:part1/bile
execute as @e[type=interaction,nbt={interaction:{}},tag=bile5] at @s run function erictho:part1/bile
execute as @e[type=interaction,nbt={interaction:{}},tag=bile6] at @s run function erictho:part1/bile


#when players have all 6 bile; open skull, set dialogue to next number for next section
#when next section starts, end this loop and start the next

#loop again
execute unless score player erictho_endloop matches 1 run schedule function erictho:part1/loop 1s