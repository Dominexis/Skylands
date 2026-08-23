
execute store result score #damage pc.main run data get storage pc:temp intent.damage

# Treat the intent owner as the attacker so its own attacker-side effects (Strength)
# apply and its victim-side ones (Vulnerable/Robust) are skipped in the preview.
# Borrow pc.atker only if it isn't already set, so a real attacker tag is never stripped.
tag @e[predicate=pc:sys/entity/any_real,predicate=pc:sys/owner/entity,tag=!pc.atker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] add pc.preview.atker
tag @e[tag=pc.preview.atker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] add pc.atker
execute as @e[predicate=pc:sys/entity/any_real,predicate=pc:sys/owner/entity,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] at @s run function pc:sys/utils/passive/use {passive:"damage_value"}
tag @e[tag=pc.preview.atker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] remove pc.atker
tag @e[tag=pc.preview.atker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] remove pc.preview.atker
execute positioned ~-1.5 ~-100 ~-1.5 as @e[predicate=pc:sys/entity/ally,dx=2,dy=200,dz=2,limit=1,type=!minecraft:giant] at @s run function pc:sys/entity/intent/icon/grid/damage/target

execute if data storage pc:temp damage.modifiers[0] run function pc:sys/entity/dmg/modifiers/return with storage pc:temp damage.modifiers[0]
execute if score #damage pc.main matches ..-1 run scoreboard players set #damage pc.main 0
data remove storage pc:temp damage