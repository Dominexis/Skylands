
# effect
#return run data modify entity @s data.intent.type set value ['walk1']
data modify entity @s data.intent.type set value ["attack1","attack2","debuff1","debuff2","walk1"]
execute if data entity @s {data:{intent:{intent_id:"attack1"}}} run data remove entity @s data.intent.type[0]
execute if data entity @s {data:{intent:{intent_id:"attack2"}}} run data remove entity @s data.intent.type[1]
execute if data entity @s {data:{intent:{intent_id:"debuff1"}}} run data remove entity @s data.intent.type[2]
execute if data entity @s {data:{intent:{intent_id:"debuff2"}}} run data remove entity @s data.intent.type[3]
execute if data entity @s {data:{intent:{intent_id:"walk1"}}} run data remove entity @s data.intent.type[4]

scoreboard players operation #hpmax pc.main = @s pc.hpmax
scoreboard players operation #hp pc.main = @s pc.hp
scoreboard players operation #hp pc.main *= #10 sl.value
scoreboard players operation #hp pc.main /= #hpmax pc.main
execute if score #hp pc.main matches ..5 unless entity @s[tag=pc.mob.ender_dragon.interphase.used] run data modify entity @s data.intent.type set value ["interphase"]