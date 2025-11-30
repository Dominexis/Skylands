
# effect
function pc:object/ender_eye/walk1/del_intent

scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:"strength"}
scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:"oneuse_strength"}

data modify entity @s teleport_duration set value 1
function pc:sys/object/walk/object

# fx
function pc:fx/buff/use
particle minecraft:dust{color:[0.58,0.369,0.82],scale:3.0f} ~ ~ ~ 0.5 1 0.5 1 50 force