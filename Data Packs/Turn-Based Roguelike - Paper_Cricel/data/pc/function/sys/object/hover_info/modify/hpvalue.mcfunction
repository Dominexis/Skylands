
# effect
    # Is Float?
execute store result storage pc:temp hover.float.hp float 0.1 store result score #remain pc.main run scoreboard players get @s pc.hp
scoreboard players operation #remain pc.main %= #10 sl.value
execute if score #remain pc.main matches 0 run data modify storage pc:temp hover.float.hp set string storage pc:temp hover.float.hp 0 -3
execute unless score #remain pc.main matches 0 run data modify storage pc:temp hover.float.hp set string storage pc:temp hover.float.hp 0 -1

execute store result storage pc:temp hover.float.hpmax float 0.1 store result score #remain pc.main run scoreboard players get @s pc.hpmax
scoreboard players operation #remain pc.main %= #10 sl.value
execute if score #remain pc.main matches 0 run data modify storage pc:temp hover.float.hpmax set string storage pc:temp hover.float.hpmax 0 -3
execute unless score #remain pc.main matches 0 run data modify storage pc:temp hover.float.hpmax set string storage pc:temp hover.float.hpmax 0 -1

execute store result storage pc:temp hover.float.shield float 0.1 store result score #remain pc.main run data get entity @s data.shield
scoreboard players operation #remain pc.main %= #10 sl.value
execute if score #remain pc.main matches 0 run data modify storage pc:temp hover.float.shield set string storage pc:temp hover.float.shield 0 -3
execute unless score #remain pc.main matches 0 run data modify storage pc:temp hover.float.shield set string storage pc:temp hover.float.shield 0 -1

    # Modify
data modify storage pc:temp hover.display.hpvalue set value [{text:"",color:"#f95353",bold: true},{text:"❤ ",bold: false},{nbt:"hover.float.hp","storage":"pc:temp"},{text:"/"},{nbt:"hover.float.hpmax","storage":"pc:temp"},{text:" HP"},{text:" ❤\n",bold: false}]
execute if data entity @s data.shield run data modify storage pc:temp hover.display.hpvalue set value [{text:"",color:"#f95353",bold: true},{font:"pc:default",text:"1 ","shadow_color": 0,color:"white",bold: false},{nbt:"hover.float.hp","storage":"pc:temp"},{text:"(",color:"#50c6e3"},{nbt:"hover.float.shield","storage":"pc:temp",color:"#50c6e3"},{text:")",color:"#50c6e3"},{text:"/"},{nbt:"hover.float.hpmax","storage":"pc:temp"},{text:" HP"},{font:"pc:default",text:" 1","shadow_color": 0,color:"white",bold: false},{text:"\n"}]
