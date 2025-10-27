scoreboard objectives add itspungpond98.test dummy

execute store result score #rel_x itspungpond98.test run data get entity @s Pos[0] 1
execute store result score #rel_y itspungpond98.test run data get entity @s Pos[1] 1
execute store result score #rel_z itspungpond98.test run data get entity @s Pos[2] 1

execute store result score #abs_x itspungpond98.test run data get entity @s Pos[0] 1
execute store result score #abs_y itspungpond98.test run data get entity @s Pos[1] 1
execute store result score #abs_z itspungpond98.test run data get entity @s Pos[2] 1

scoreboard players set #x itspungpond98.test 256
scoreboard players set #y itspungpond98.test 0
scoreboard players set #z itspungpond98.test 256

scoreboard players operation #rel_x itspungpond98.test -= #x itspungpond98.test
scoreboard players operation #rel_y itspungpond98.test -= #y itspungpond98.test
scoreboard players operation #rel_z itspungpond98.test -= #z itspungpond98.test

tellraw @s [{text:"Absolute Coords: ",type:"text"},{score:{name:"#abs_x",objective:"itspungpond98.test"},type:"score"},{text:" ",type:"text"},{score:{name:"#abs_y",objective:"itspungpond98.test"},type:"score"},{text:" ",type:"text"},{score:{name:"#abs_z",objective:"itspungpond98.test"},type:"score"}]
tellraw @s [{text:"Relative Coords: ~",type:"text"},{score:{name:"#rel_x",objective:"itspungpond98.test"},type:"score"},{text:" ~",type:"text"},{score:{name:"#rel_y",objective:"itspungpond98.test"},type:"score"},{text:" ~",type:"text"},{score:{name:"#rel_z",objective:"itspungpond98.test"},type:"score"}]

scoreboard objectives remove itspungpond98.test