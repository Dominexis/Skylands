
execute store result score #effect.value pc.main run data get entity @s data.effects[{id:"flaming_touch"}].value

execute positioned ~ ~1 ~ run function entity:blaze_magma/attack1/fx/use

# fx
playsound minecraft:entity.blaze.shoot master @a ~ ~1024 ~ 0 1.5 0.65
playsound minecraft:block.trial_spawner.spawn_item master @a ~ ~1024 ~ 0 0.75 0.25