# As : enemy
##

tag @s add synb.ctx.enemy_hurt_target
data modify entity @s HurtTime set value 0s
execute if entity @s[nbt=!{active_effects:[{id:"minecraft:unluck"}]}] run function synb:itemengine/triggers/hit_detection/_enemy_attacked
execute if entity @s[nbt={active_effects:[{id:"minecraft:unluck"}]}] run function synb:itemengine/triggers/hit_detection/_enemy_shot
data modify entity @s HurtTime set value 0s
tag @s remove synb.ctx.enemy_hurt_target

# Used for custom mobs
tag @s add synb.attr.just_hit