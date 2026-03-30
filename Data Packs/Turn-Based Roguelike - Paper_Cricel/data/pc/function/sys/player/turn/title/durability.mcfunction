
# effect
    # Value
execute as @n[predicate=pc:object/ally_player,type=!player,tag=pc.player.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run data modify storage pc:temp actionbar.object set from entity @s data
data modify storage pc:temp actionbar.durability set value {value:-1,max:-1}
function pc:sys/player/turn/title/get_durability with entity @s SelectedItem.components."minecraft:custom_data".pc

    # Type
scoreboard players set #type pc.main 1
execute if data storage pc:temp {actionbar:{durability:{max:-1}}} run scoreboard players set #type pc.main 2

execute if score #type pc.main matches 1 run data modify storage pc:temp actionbar.display.durability_part set value [{color:"#3fa0e1",nbt:"actionbar.durability.value","storage":"pc:temp"},{text:"\ue002",font:"pc:default"},{color:"#3fa0e1",text:"/"},{text:"\ue002",font:"pc:default"},{color:"#3fa0e1",nbt:"actionbar.durability.max","storage":"pc:temp"}]
execute if score #type pc.main matches 2 run data modify storage pc:temp actionbar.display.durability_part set value [{color:"#3fa0e1",text:"∞/∞"}]

data modify storage pc:temp actionbar.display.durability set value ["",{font:"pc:default",text:"1"},{color:"#3fa0e1",text:" Durability ",bold: true},{color:"#3fa0e1",text:"["},{nbt:"actionbar.display.durability_part","storage":"pc:temp","interpret":true},{color:"#3fa0e1",text:"]"}]