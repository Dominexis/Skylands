
summon minecraft:marker ~ ~ ~ {Tags:["pc.entity.ender_eye.gaze","pc.fx","pc.summon"]}

rotate @e[tag=pc.summon,type=minecraft:marker,limit=1] ~ 90
tag @e[tag=pc.summon,type=minecraft:marker,limit=1] remove pc.summon