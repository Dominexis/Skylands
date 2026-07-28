
scoreboard players add @s pc.duration 1

tp @s ^ ^ ^1
execute if function sys:entity/hitbox/ally run function entity:piglin_heal/attack1/fx/hit

# execute if score @s pc.duration matches 60.. run function entity:piglin_heal/attack1/fx/clear
execute unless function sys:entity/hitbox/intent positioned ^ ^ ^4 unless function sys:entity/hitbox/intent run function entity:piglin_heal/attack1/fx/clear

# fx
particle dust_color_transition{from_color:[0.902, 0.329, 0.329],to_color:[0.725, 0.196, 0.337],scale:3} ~ ~ ~ 0.3 0.3 0.3 0 3 force
playsound minecraft:entity.silverfish.step master @a ~ ~1024 ~ 0 1.5 0.1
scoreboard players operation #mod pc.main = @s pc.duration
scoreboard players operation #mod pc.main %= #20 sl.value

execute if score #mod pc.main matches 0 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^1.5 ^0.0 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 0 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-1.5 ^-0.0 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 1 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^1.427 ^0.464 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 1 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-1.427 ^-0.464 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 2 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^1.214 ^0.882 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 2 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-1.214 ^-0.882 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 3 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^0.882 ^1.214 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 3 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-0.882 ^-1.214 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 4 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^0.464 ^1.427 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 4 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-0.464 ^-1.427 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 5 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^0.0 ^1.5 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 5 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-0.0 ^-1.5 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 6 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-0.464 ^1.427 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 6 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^0.464 ^-1.427 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 7 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-0.882 ^1.214 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 7 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^0.882 ^-1.214 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 8 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-1.214 ^0.882 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 8 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^1.214 ^-0.882 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 9 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-1.427 ^0.464 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 9 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^1.427 ^-0.464 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 10 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-1.5 ^0.0 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 10 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^1.5 ^-0.0 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 11 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-1.427 ^-0.464 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 11 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^1.427 ^0.464 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 12 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-1.214 ^-0.882 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 12 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^1.214 ^0.882 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 13 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-0.882 ^-1.214 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 13 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^0.882 ^1.214 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 14 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-0.464 ^-1.427 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 14 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^0.464 ^1.427 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 15 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-0.0 ^-1.5 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 15 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^0.0 ^1.5 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 16 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^0.464 ^-1.427 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 16 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-0.464 ^1.427 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 17 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^0.882 ^-1.214 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 17 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-0.882 ^1.214 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 18 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^1.214 ^-0.882 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 18 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-1.214 ^0.882 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 19 run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^1.427 ^-0.464 ^ 0 0 0 0 0 force
execute if score #mod pc.main matches 19 run return run particle dust{color:[0.984, 0.604, 0.831],scale:1.5} ^-1.427 ^0.464 ^ 0 0 0 0 0 force