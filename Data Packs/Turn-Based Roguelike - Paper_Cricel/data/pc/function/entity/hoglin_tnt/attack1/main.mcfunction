
scoreboard players add @s pc.duration 1
execute if entity @s[tag=pc.entity.hoglin_tnt.attack1.nohit] run return run function pc:entity/hoglin_tnt/attack1/nohit/main

execute if function pc:sys/entity/hitbox/anynoself run return run function pc:entity/hoglin_tnt/attack1/2
execute positioned ^ ^ ^3 unless function pc:sys/entity/hitbox/intent run return run function pc:entity/hoglin_tnt/attack1/nohit/use

tp @s ^ ^ ^1

execute at @s positioned ^4 ^ ^ if function pc:sys/entity/hitbox/ally run function pc:entity/hoglin_tnt/attack1/3
execute at @s positioned ^-4 ^ ^ if function pc:sys/entity/hitbox/ally run function pc:entity/hoglin_tnt/attack1/3

# fx
particle explosion ^1.5 ^ ^ 0 0 0 0 0 force
particle explosion ^-1.5 ^ ^ 0 0 0 0 0 force
particle minecraft:gust ~ ~1 ~ 0.3 0.3 0.3 0 2 force

playsound minecraft:entity.ravager.step master @a ~ ~1024 ~ 0 1.5 0.5
playsound minecraft:entity.hoglin.step master @a ~ ~1024 ~ 0 1 1