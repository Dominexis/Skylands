
scoreboard players operation #time.min pc.main = $stat.time pc.game
scoreboard players operation #time.min pc.main /= #60 sl.value

execute if score #time.min pc.main matches ..9 run return run data modify storage pc:game stat.time.min set value ["0",{score:{name:"#time.min",objective:"pc.main"}}]
data modify storage pc:game stat.time.min set value [{score:{name:"#time.min",objective:"pc.main"}}]