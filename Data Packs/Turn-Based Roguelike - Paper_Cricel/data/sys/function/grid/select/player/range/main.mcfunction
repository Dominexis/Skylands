
execute if function sys:grid/select/player/range/is_switch run function sys:grid/select/player/range/use
execute unless entity @e[tag=pc.select,tag=!pc.select.clear,type=minecraft:item_display,limit=1] run function sys:grid/select/player/summon