## (exe) grid

data modify storage pc:temp infobar.effects set from entity @s data.effects
execute positioned ~ ~ ~2 run function pc:sys/grid/infobar/2
data remove storage pc:temp infobar