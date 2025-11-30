
# effect
data modify storage pc:temp actionbar.display.money set value ["",{font:"pc:default",text:"4"},{color:"#f4cd72",text:" Money ",bold:1b},{color:"#f4cd72",text:"["},{color:"#f4cd72",score:{name:"$game.money",objective:"pc.main"}},{color:"#f4cd72",text:"]"}]


# Actionbar Offset
execute if score $game.money pc.main matches 10.. run scoreboard players add #offset pc.main 1
execute if score $game.money pc.main matches 100.. run scoreboard players add #offset pc.main 1
execute if score $game.money pc.main matches 1000.. run scoreboard players add #offset pc.main 1