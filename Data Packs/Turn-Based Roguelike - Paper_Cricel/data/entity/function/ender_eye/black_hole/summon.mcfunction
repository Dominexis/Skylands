
summon minecraft:interaction ~ ~ ~ {Tags:[pc.entity.ender_eye.black_hole, pc.summon], width: 1.5f, height: 1.5f, Passengers: [{id: "marker", Tags: [pc.entity.ender_eye.black_hole.angle1],Rotation:[0f,-45f]}, {id: "marker", Tags: [pc.entity.ender_eye.black_hole.angle2],Rotation:[0f,-45f]}]}

data modify storage pc:temp summon set value {id:"ender_eye/black_hole",team:"enemy",hpmax:8,effects:[{id:"minion"}]}
# execute store result storage pc:temp summon.hpmax int 1 run scoreboard players get #hpmax pc.game

execute as @e[tag=pc.summon,type=minecraft:interaction,limit=1] at @s run function sys:entity/summon