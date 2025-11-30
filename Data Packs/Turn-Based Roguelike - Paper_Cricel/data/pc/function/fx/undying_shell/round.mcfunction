
# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.undying_shell.round"}

execute if score #var pc.main matches 1 on passengers if entity @s[type=minecraft:text_display] run data modify entity @s text set value [{text:"Re",color:"#8093D1",type:"text"},{text:"viving...",color:"gray",type:"text"}]
execute if score #var pc.main matches 2 on passengers if entity @s[type=minecraft:text_display] run data modify entity @s text set value [{text:"Revi",color:"#8093D1",type:"text"},{text:"ving...",color:"gray",type:"text"}]
execute if score #var pc.main matches 3 on passengers if entity @s[type=minecraft:text_display] run data modify entity @s text set value [{text:"Revivi",color:"#8093D1",type:"text"},{text:"ng...",color:"gray",type:"text"}]
execute if score #var pc.main matches 4 on passengers if entity @s[type=minecraft:text_display] run data modify entity @s text set value [{text:"Reviving.",color:"#8093D1",type:"text"},{text:"..",color:"gray",type:"text"}]
execute if score #var pc.main matches 5.. positioned ~ ~-1 ~ run function pc:fx/undying_shell/reborn with entity @s data

# fx