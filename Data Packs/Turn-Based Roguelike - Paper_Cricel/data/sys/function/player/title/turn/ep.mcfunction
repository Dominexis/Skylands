
scoreboard players operation #value pc.ep = @e[tag=pc.player.now,type=armor_stand,limit=1] pc.ep
scoreboard players operation #value pc.epmax = @e[tag=pc.player.now,type=armor_stand,limit=1] pc.epmax

data modify storage pc:temp actionbar.display.ep_part set value [{color:"gold",text:"["},{color:"gold",score:{name:"#value",objective:"pc.ep"}},{color:"gold",text:"/"},{color:"gold",score:{name:"#value",objective:"pc.epmax"}},{color:"gold",text:"]"}]
data modify storage pc:temp actionbar.display.ep set value ["",{"font":"sys:icon","text": "0"},{nbt:"sys.hud.energy",storage:"pc:lang",interpret:1b},{nbt:"actionbar.display.ep_part",storage:"pc:temp",font:"sys:default",interpret:1b}]