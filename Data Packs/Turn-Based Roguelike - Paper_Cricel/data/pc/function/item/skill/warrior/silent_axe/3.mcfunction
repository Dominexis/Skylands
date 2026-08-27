
execute store result score #damage pc.main run data get entity @s data.effects[{id:'vulnerable'}].value 3

# fx
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~1024 ~ 0 2 0.25
particle minecraft:sculk_charge_pop ~ ~1 ~ 0.5 0.3 0.5 0.05 50 force