#loop part1--------------------

#soul particles
execute at @a[team=sl.player,distance=..100] run particle minecraft:sculk_soul ~ ~1.5 ~ 0.2 0.2 0.2 0.06 7 normal

#checkpoints
#make sure player cant continue if they dont have the bile in the area before checkpoint

execute at @a[team=sl.player,distance=..100] if block ~ ~-3 ~ minecraft:redstone_lamp as @a[team=sl.player,distance=..100] run function erictho:checkpoint/checkpoint

#give a warning when they reach checkpoint (use command block at checkpoint?)
execute at @a[team=sl.player,distance=..100] if block ~ ~-3 ~ minecraft:bedrock as @a[team=sl.player,distance=..100] run function erictho:part1/check

#death when touch water
execute at @a[team=sl.player,distance=..100] if block ~ ~ ~ water as @a[team=sl.player,distance=..100] run function erictho:death

#play spooksy sound: function erictho:part1/sounds

#interactions that give player bile
execute as @e[type=interaction,nbt={interaction:{}},tag=erictho.bile1,distance=..100] at @s run function erictho:part1/bile
execute as @e[type=interaction,nbt={interaction:{}},tag=erictho.bile2,distance=..100] at @s run function erictho:part1/bile
execute as @e[type=interaction,nbt={interaction:{}},tag=erictho.bile3,distance=..100] at @s run function erictho:part1/bile
execute as @e[type=interaction,nbt={interaction:{}},tag=erictho.bile4,distance=..100] at @s run function erictho:part1/bile
execute as @e[type=interaction,nbt={interaction:{}},tag=erictho.bile5,distance=..100] at @s run function erictho:part1/bile
execute as @e[type=interaction,nbt={interaction:{}},tag=erictho.bile6,distance=..100] at @s run function erictho:part1/bile

#when players have all 6 bile; open skull, set dialogue to next number for next section
#when next section starts, end this loop and start the next

#loop again
execute unless score erictho.player erictho.endloop matches 1 run schedule function erictho:part1/loop 1s