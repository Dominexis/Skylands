
data modify storage pc:temp actionbar.ep set value ["",{"font":"pc:sys/icon","text": "0"},{nbt:"sys.hud.energy",storage:"pc:lang",interpret:1b},{color:"gold",text:"[",font:"pc:sys/default"},{color:"gold",score:{name:"@s",objective:"pc.epmax"},font:"pc:sys/default"},{color:"gold",text:"]",font:"pc:sys/default"}]

# Actionbar Offset
execute if score @s pc.epmax matches 10.. run scoreboard players add #offset pc.main 1