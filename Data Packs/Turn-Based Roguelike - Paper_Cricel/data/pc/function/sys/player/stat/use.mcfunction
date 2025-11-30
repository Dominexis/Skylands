
# Time
schedule clear pc:sys/game/combat/time

scoreboard players operation #time.min pc.main = $game.time pc.main
scoreboard players operation #time.sec pc.main = $game.time pc.main
scoreboard players operation #time.min pc.main /= #60 sl.value
scoreboard players operation #time.sec pc.main %= #60 sl.value

execute if score #time.min pc.main matches ..9 run data modify storage pc:game stat.time.min set value ["0",{score:{name:"#time.min",objective:"pc.main"}}]
execute if score #time.sec pc.main matches ..9 run data modify storage pc:game stat.time.sec set value ["0",{score:{name:"#time.sec",objective:"pc.main"}}]
execute unless score #time.min pc.main matches ..9 run data modify storage pc:game stat.time.min set value [{score:{name:"#time.min",objective:"pc.main"}}]
execute unless score #time.sec pc.main matches ..9 run data modify storage pc:game stat.time.sec set value [{score:{name:"#time.sec",objective:"pc.main"}}]

data modify storage pc:game stat.time.display set value [{nbt:"stat.time.min",storage:"pc:game",interpret:true},":",{nbt:"stat.time.sec",storage:"pc:game",interpret:true}]

# Money
scoreboard players operation $game.money.total pc.main = $game.money pc.main
scoreboard players operation $game.money.total pc.main += $game.money.cost pc.main

# Display
execute as @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/player/stat/display