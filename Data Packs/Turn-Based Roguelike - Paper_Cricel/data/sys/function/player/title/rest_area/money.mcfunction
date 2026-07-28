
data modify storage pc:temp actionbar.money set value ["",{"font":"sys:icon","text":"3"},{nbt:"sys.hud.money",storage:"pc:lang",interpret:1b},{color:"#f4cd72",text:"[",font:"sys:default"},{color:"#f4cd72",score:{name:"$money",objective:"pc.game"},font:"sys:default"},{color:"#f4cd72",text:"]",font:"sys:default"}]


# Actionbar Offset
execute if score $money pc.game matches 10.. run scoreboard players add #offset pc.main 1
execute if score $money pc.game matches 100.. run scoreboard players add #offset pc.main 1
execute if score $money pc.game matches 1000.. run scoreboard players add #offset pc.main 1