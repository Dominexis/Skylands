
# effect
function pc:sys/grid/state/reset_avail
scoreboard players set #pass pc.main 1

execute if entity @s[tag=pc.path_finding.checked] run scoreboard players set #pass pc.main 0
execute unless data entity @s {data:{select:{avail:1b}}} run scoreboard players set #pass pc.main 0
$execute positioned ~-1.5 ~-100 ~-1.5 if data entity @s data.occupy.$(object) unless entity @n[type=!minecraft:player,dx=2,dy=200,dz=2,tag=pc.grid.selector] run scoreboard players set #pass pc.main 2

execute if score #pass pc.main matches 1..2 run function pc:sys/grid/select/nearest/check/3
execute if score #pass pc.main matches 2 run function pc:sys/grid/select/nearest/check/4