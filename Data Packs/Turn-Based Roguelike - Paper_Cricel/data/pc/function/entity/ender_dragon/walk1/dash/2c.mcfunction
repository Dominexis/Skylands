
execute positioned ~-1.5 ~-100 ~-1.5 store result score #rotate pc.main run function pc:entity/ender_dragon/walk1/dash/detect
execute if score #rotate pc.main matches 2 rotated ~-90 ~ run function pc:sys/entity/repel/use
execute if score #rotate pc.main matches 3 rotated ~90 ~ run function pc:sys/entity/repel/use

# fx
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~1024 ~ 0 0.75 0.35
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~1024 ~ 0 1.25 0.5
playsound minecraft:entity.puffer_fish.sting master @a ~ ~1024 ~ 0 0 0.5