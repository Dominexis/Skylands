
# effect
execute unless data storage pc:temp {money:{value_extra:0}} run data modify storage pc:temp money.display set value ["",{nbt:"money.value","storage":"pc:temp",color:"gold",bold:true},{text:" (+",color:"gray"},{nbt:"money.value_extra","storage":"pc:temp",color:"gray"},{text:")",color:"gray"}]

execute store result score #scale pc.main if entity @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]

execute store result score #money pc.main run data get storage pc:temp money.value
execute store result score #money.extra pc.main run data get storage pc:temp money.value_extra

execute store result storage pc:temp money.value int 1 run scoreboard players operation #money pc.main *= #scale pc.main
execute store result storage pc:temp money.value_extra int 1 run scoreboard players operation #money.extra pc.main *= #scale pc.main

scoreboard players operation $game.money pc.main += #money pc.main
scoreboard players operation $game.money pc.main += #money.extra pc.main

# fx
tellraw @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] [{text:"* ",color: "gray"},{text:"Obtain "},{nbt:"money.display","storage": "pc:temp","interpret": true},{text:" Money",color: "#f1de61"},{text:"4",font: "pc:default",color: "white"}]

data remove storage pc:temp money