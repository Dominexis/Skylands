
# effect
scoreboard players operation #bar.value pc.hp = @s pc.hp
execute if score #bar.value pc.hp matches ..0 run scoreboard players set #bar.value pc.hp 0
scoreboard players operation #bar.value pc.hp *= #10 sl.value
scoreboard players operation #bar.value pc.hp /= @s pc.hpmax

execute if score #bar.value pc.hp matches 0 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"",color:"#f95353"},empty:{text:"■■■■■■■■■■",color:"gray"}}
execute if score #bar.value pc.hp matches 1 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"■",color:"#f95353"},empty:{text:"■■■■■■■■■",color:"gray"}}
execute if score #bar.value pc.hp matches 2 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"■■",color:"#f95353"},empty:{text:"■■■■■■■■",color:"gray"}}
execute if score #bar.value pc.hp matches 3 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"■■■",color:"#f95353"},empty:{text:"■■■■■■■",color:"gray"}}
execute if score #bar.value pc.hp matches 4 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"■■■■",color:"#f95353"},empty:{text:"■■■■■■",color:"gray"}}
execute if score #bar.value pc.hp matches 5 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"■■■■■",color:"#f95353"},empty:{text:"■■■■■",color:"gray"}}
execute if score #bar.value pc.hp matches 6 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"■■■■■■",color:"#f95353"},empty:{text:"■■■■",color:"gray"}}
execute if score #bar.value pc.hp matches 7 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"■■■■■■■",color:"#f95353"},empty:{text:"■■■",color:"gray"}}
execute if score #bar.value pc.hp matches 8 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"■■■■■■■■",color:"#f95353"},empty:{text:"■■",color:"gray"}}
execute if score #bar.value pc.hp matches 9 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"■■■■■■■■■",color:"#f95353"},empty:{text:"■",color:"gray"}}
execute if score #bar.value pc.hp matches 10 run data modify storage pc:temp hover.display.hpbar set value {full:{text:"■■■■■■■■■■",color:"#f95353"},empty:{text:"",color:"gray"}}