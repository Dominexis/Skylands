
# effect
    # No Damage
execute unless data storage pc:temp icon.damage run return run data modify storage pc:temp icon.damage set value ''
execute if data storage pc:temp {icon:{damage:0}} run return run data modify storage pc:temp icon.damage set value ''

    # Damage
execute store result score #damage pc.main run data get storage pc:temp icon.damage 1
execute as @e[predicate=pc:object/all,type=!player,tag=pc.select.object,limit=1,distance=..100] at @s run function pc:sys/object/intent/icon/grid/display/atker
execute as @e[predicate=pc:object/all,type=!player,tag=pc.intent.in_range,limit=1,distance=..100] at @s run function pc:sys/object/intent/icon/grid/display/victim
execute store result storage pc:temp icon.damage int 1 run scoreboard players get #damage pc.main
data remove storage pc:temp damage

execute store result storage pc:temp icon.damage float 0.1 store result score #remain pc.main run data get storage pc:temp icon.damage
scoreboard players operation #remain pc.main %= #10 sl.value
execute if score #remain pc.main matches 0 run data modify storage pc:temp icon.damage set string storage pc:temp icon.damage 0 -3
execute unless score #remain pc.main matches 0 run data modify storage pc:temp icon.damage set string storage pc:temp icon.damage 0 -1