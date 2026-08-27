# As : player
##

# Attack from enemy
scoreboard players set #cond synb.Tmp.Expr 0
execute on attacker if entity @s run scoreboard players set #cond synb.Tmp.Expr 1
execute if entity @s[tag=synb.status.hurt_no_enemy] run scoreboard players set #cond synb.Tmp.Expr 0
execute on attacker run tag @s add synb.ctx.enemy_attacker_src
execute if score #cond synb.Tmp.Expr matches 1 if entity @s[nbt=!{active_effects:[{id:"minecraft:unluck"}]},nbt=!{active_effects:[{id:"minecraft:levitation"}]}] run function synb:itemengine/triggers/hit_detection/_player_attacked
execute if score #cond synb.Tmp.Expr matches 1 if entity @s[nbt={active_effects:[{id:"minecraft:unluck"}]}] run function synb:itemengine/triggers/hit_detection/_player_shot
execute if score #cond synb.Tmp.Expr matches 1 if entity @s[nbt={active_effects:[{id:"minecraft:levitation"}]}] run function synb:itemengine/triggers/hit_detection/_player_shot
execute on attacker run tag @s remove synb.ctx.enemy_attacker_src

# Used for custom mobs
execute on attacker run tag @s[type=!minecraft:player] add synb.attr.just_attacked

# Other sources
execute if entity @s[tag=synb.status.hurt_no_enemy] run function synb:itemengine/executor/run {func:"player_hurt"}