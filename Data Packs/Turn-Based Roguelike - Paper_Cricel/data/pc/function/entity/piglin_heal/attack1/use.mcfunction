
scoreboard players set #progression pc.main 0
execute rotated 0 0 positioned ~ ~1 ~ run function pc:entity/piglin_heal/attack1/fx/use
execute rotated 45 0 positioned ~ ~1 ~ run function pc:entity/piglin_heal/attack1/fx/use
execute rotated 90 0 positioned ~ ~1 ~ run function pc:entity/piglin_heal/attack1/fx/use
execute rotated 135 0 positioned ~ ~1 ~ run function pc:entity/piglin_heal/attack1/fx/use
execute rotated 180 0 positioned ~ ~1 ~ run function pc:entity/piglin_heal/attack1/fx/use
execute rotated 225 0 positioned ~ ~1 ~ run function pc:entity/piglin_heal/attack1/fx/use
execute rotated 270 0 positioned ~ ~1 ~ run function pc:entity/piglin_heal/attack1/fx/use
execute rotated 315 0 positioned ~ ~1 ~ run function pc:entity/piglin_heal/attack1/fx/use

# fx
playsound minecraft:entity.piglin.celebrate master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.ender_pearl.throw master @a ~ ~1024 ~ 0 0.5 1
playsound minecraft:entity.ender_pearl.throw master @a ~ ~1024 ~ 0 0.75 1
playsound minecraft:entity.ender_pearl.throw master @a ~ ~1024 ~ 0 1 1