
particle dust{color:[1.000,0.961,0.859],scale:1.5} ^0.5 ^0.25 ^ 0 0 0 0 0 force
particle dust{color:[1.000,0.961,0.859],scale:1.5} ^-0.5 ^0.25 ^ 0 0 0 0 0 force

execute unless entity @e[tag=pc.player.selector,distance=..0.2,limit=1,type=!minecraft:giant] positioned ^ ^ ^0.2 run function pc:item/move/minecart/fx_moving/use