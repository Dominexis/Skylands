
scoreboard players operation #value pc.ep = @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.ep
scoreboard players operation #value pc.epmax = @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.epmax

data modify storage pc:temp actionbar.display.ep_part set value [{color:"gold",text:"["},{color:"gold",score:{name:"#value",objective:"pc.ep"}},{color:"gold",text:"/"},{color:"gold",score:{name:"#value",objective:"pc.epmax"}},{color:"gold",text:"]"}]
data modify storage pc:temp actionbar.display.ep set value ["",{"font":"pc:sys/icon","text": "0"},{nbt:"sys.hud.energy",storage:"pc:lang",interpret:1b},{nbt:"actionbar.display.ep_part",storage:"pc:temp",font:"pc:sys/default",interpret:1b}]