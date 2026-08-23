
scoreboard players add @s pc.animation 1

# Intents
execute if entity @s[tag=pc.entity.ender_dragon.attack1] run return run function pc:entity/ender_dragon/fx/attack1/main
execute if entity @s[tag=pc.entity.ender_dragon.attack2] run return run function pc:entity/ender_dragon/fx/attack2/main
execute if entity @s[tag=pc.entity.ender_dragon.debuff1] run return run function pc:entity/ender_dragon/fx/debuff1/main
execute if entity @s[tag=pc.entity.ender_dragon.debuff2] run return run function pc:entity/ender_dragon/fx/debuff2/main
execute if entity @s[tag=pc.entity.ender_dragon.buff1] run return run function pc:entity/ender_dragon/fx/buff1/main
execute if entity @s[tag=pc.entity.ender_dragon.walk1] run return run function pc:entity/ender_dragon/fx/walk1/main

# Idle
function pc:entity/ender_dragon/fx/idle/main