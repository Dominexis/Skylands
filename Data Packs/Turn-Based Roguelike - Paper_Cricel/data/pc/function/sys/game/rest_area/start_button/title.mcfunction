
# effect
execute unless data storage pc:game combat.start_button.lvls run data modify storage pc:game combat.start_button.lvls set value [{text:"◆    ["},{score:{name:"$game.level",objective:"pc.main"}},{text:"/"},{score:{name:"$game.levelmax",objective:"pc.main"}},{text:"]    ◆\n"}]

data modify entity @s text set value [{nbt:"combat.start_button.lvls",storage:"pc:game",interpret:1b,source:"storage",type:"nbt"},{nbt:"combat.start_button.name",storage:"pc:game",interpret:1b,source:"storage",type:"nbt"}]
data merge entity @s {transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}

# fx
particle minecraft:end_rod ~0.1 ~0.35 ~ 0 0 1 0.15 0 force
particle minecraft:end_rod ~0.1 ~0.25 ~ 0 0 1.25 0.15 0 force
particle minecraft:end_rod ~0.1 ~0.25 ~ 0 0 1.5 0.15 0 force
particle minecraft:end_rod ~0.1 ~0.15 ~ 0 0 1 0.15 0 force

particle minecraft:end_rod ~0.1 ~0.35 ~ 0 0 -1 0.15 0 force
particle minecraft:end_rod ~0.1 ~0.25 ~ 0 0 -1.25 0.15 0 force
particle minecraft:end_rod ~0.1 ~0.25 ~ 0 0 -1.5 0.15 0 force
particle minecraft:end_rod ~0.1 ~0.15 ~ 0 0 -1 0.15 0 force