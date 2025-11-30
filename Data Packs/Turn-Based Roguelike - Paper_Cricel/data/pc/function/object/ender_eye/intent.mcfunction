
# effect
data modify entity @s data.intent.type set value ['attack3','attack2']
execute if entity @s[tag=pc.mob.ender_eye.hurt] run data modify entity @s data.intent.type set value ['attack2','attack1']
execute unless data entity @s data.effect.oneuse_strength unless function pc:sys/grid/detect/ally3x3 run data modify entity @s data.intent.type set value ['walk1']

tag @s remove pc.mob.ender_eye.hurt