
# effect
scoreboard players add @s pc.duration 1
execute at @s run function pc:sys/game/combat/tpter/spin
execute at @s run function pc:sys/game/combat/tpter/spin
execute at @s run function pc:sys/game/combat/tpter/spin
execute at @s run function pc:sys/game/combat/tpter/spin
execute at @s run function pc:sys/game/combat/tpter/spin
execute at @s run function pc:sys/game/combat/tpter/spin

# Player
execute if entity @p[distance=..1.5,predicate=sl:player] run function pc:sys/game/combat/end/return/use