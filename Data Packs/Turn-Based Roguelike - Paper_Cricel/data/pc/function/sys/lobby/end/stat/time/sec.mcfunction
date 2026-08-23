
scoreboard players operation #time.sec pc.main = $stat.time pc.game
scoreboard players operation #time.sec pc.main %= #60 sl.value

execute if score #time.sec pc.main matches ..9 run return run data modify storage pc:game stat.time.sec set value ["0",{score:{name:"#time.sec",objective:"pc.main"}}]
data modify storage pc:game stat.time.sec set value [{score:{name:"#time.sec",objective:"pc.main"}}]