
data modify storage pc:temp actionbar.ep set value ["",{"font":"sys:icon","text": "0"},{nbt:"sys.hud.energy",storage:"pc:lang",interpret:1b},{color:"gold",text:"[",font:"sys:default"},{color:"gold",score:{name:"@s",objective:"pc.epmax"},font:"sys:default"},{color:"gold",text:"]",font:"sys:default"}]

# Actionbar Offset
execute if score @s pc.epmax matches 10.. run scoreboard players add #offset pc.main 1