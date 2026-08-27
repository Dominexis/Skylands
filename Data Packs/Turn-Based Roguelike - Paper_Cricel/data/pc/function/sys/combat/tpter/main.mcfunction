
scoreboard players add @s pc.duration 1
execute at @s run function pc:sys/combat/tpter/spin
execute at @s run function pc:sys/combat/tpter/spin
execute at @s run function pc:sys/combat/tpter/spin
execute at @s run function pc:sys/combat/tpter/spin
execute at @s run function pc:sys/combat/tpter/spin
execute at @s run function pc:sys/combat/tpter/spin

# Player
execute if entity @a[distance=..1.5,predicate=sl:player,limit=1] run function pc:sys/combat/tpter/return/use