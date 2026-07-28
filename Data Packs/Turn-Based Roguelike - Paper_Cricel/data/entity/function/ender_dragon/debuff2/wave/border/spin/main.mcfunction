
scoreboard players add @s pc.animation 1

scoreboard players operation #mod pc.main = @s pc.animation
scoreboard players operation #mod pc.main %= #15 sl.value

rotate @s ~2.5 ~

execute if score #mod pc.main matches 0 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006"},{color:"#6eb4f4",text:"■"},{color:"#619de9",text:"■"},{color:"#5487de",text:"■"},{color:"#4771d4",text:"■"},{color:"#395ac9",text:"■"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 1 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006"},{color:"#619de9",text:"■"},{color:"#5487de",text:"■"},{color:"#4771d4",text:"■"},{color:"#395ac9",text:"■"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 2 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006"},{color:"#5487de",text:"■"},{color:"#4771d4",text:"■"},{color:"#395ac9",text:"■"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 3 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006\ue006"},{color:"#4771d4",text:"■"},{color:"#395ac9",text:"■"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 4 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006\ue006\ue006"},{color:"#395ac9",text:"■"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 5 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006\ue006\ue006\ue006"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 6 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006\ue006\ue006\ue006\ue006"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 7 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006\ue006\ue006\ue006\ue006\ue006"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 8 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006\ue006\ue006\ue006\ue006"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 9 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006\ue006\ue006\ue006"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 10 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006\ue006\ue006"},{color:"#395ac9",text:"■"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 11 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006\ue006"},{color:"#4771d4",text:"■"},{color:"#395ac9",text:"■"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 12 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006\ue006"},{color:"#5487de",text:"■"},{color:"#4771d4",text:"■"},{color:"#395ac9",text:"■"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 13 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006\ue006"},{color:"#619de9",text:"■"},{color:"#5487de",text:"■"},{color:"#4771d4",text:"■"},{color:"#395ac9",text:"■"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}
execute if score #mod pc.main matches 14 run data merge entity @s {text:["",{font:"sys:space",text:"\ue006"},{color:"#6eb4f4",text:"■"},{color:"#619de9",text:"■"},{color:"#5487de",text:"■"},{color:"#4771d4",text:"■"},{color:"#395ac9",text:"■"},{color:"#2c44be",text:"■"},{color:"#1f2db3",text:"■"},{color:"#1217a8",text:"■"}]}

data modify storage pc:temp text set from entity @s text
execute on passengers run function entity:ender_dragon/debuff2/wave/border/spin/2
data remove storage pc:temp text