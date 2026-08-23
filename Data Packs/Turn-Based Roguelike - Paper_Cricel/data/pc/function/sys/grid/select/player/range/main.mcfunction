
execute if function pc:sys/grid/select/player/range/is_switch run function pc:sys/grid/select/player/range/use
execute unless entity @e[tag=pc.select,tag=!pc.select.clear,type=minecraft:item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/grid/select/player/summon