execute if block ~ ~7 ~ minecraft:waxed_oxidized_copper_bulb[lit=false] run function piecewiselantern:toggle_bulb_on
execute if score bulbtoggle piecewiselantern.data matches 0 if block ~ ~7 ~ minecraft:waxed_oxidized_copper_bulb[lit=true] run setblock ~ ~7 ~ minecraft:waxed_oxidized_copper_bulb[lit=false]
scoreboard players set bulbtoggle piecewiselantern.data 0