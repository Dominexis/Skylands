
scoreboard players operation #value pc.hp = @s pc.hp
scoreboard players operation #value pc.hpmax = @s pc.hpmax

data modify storage pc:temp actionbar.hp set value [{color:"#f95353",text:""},{"font":"sys:icon","text":"2",color:"white"},{nbt:"sys.hud.hp",storage:"pc:lang",interpret:1b},{text:"[",font:"sys:default"},{score:{name:"#value",objective:"pc.hpmax"},font:"sys:default"},{text:"]",font:"sys:default"}]

# Actionbar Offset
execute if score #value pc.hpmax matches 10.. run scoreboard players add #offset pc.main 1
execute if score #value pc.hpmax matches 100.. run scoreboard players add #offset pc.main 1