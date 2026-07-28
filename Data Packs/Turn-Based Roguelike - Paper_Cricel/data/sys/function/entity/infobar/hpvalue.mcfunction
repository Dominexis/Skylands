
scoreboard players operation #value pc.hp = @s pc.hp
scoreboard players operation #value pc.hpmax = @s pc.hpmax
scoreboard players operation #value pc.shield = @s pc.shield

execute if score #value pc.shield matches 1.. run return run data modify storage pc:temp infobar.hpvalue set value [{text:"",color:"#f95353",bold:1b},{"font":"sys:icon",text:"1 ",shadow_color:0,color:"white",bold:0b},{score:{name:"#value",objective:"pc.hp"}},{text:"(",color:"#50c6e3"},{score:{name:"#value",objective:"pc.shield"},color:"#50c6e3"},{text:")",color:"#50c6e3"},{text:"/"},{score:{name:"#value",objective:"pc.hpmax"}},{text:" HP"},{"font":"sys:icon",text:" 1",shadow_color:0,color:"white",bold:0b},{text:"\n"}]
data modify storage pc:temp infobar.hpvalue set value [{text:"",color:"#f95353",bold:1b},{text:"❤ ",bold:0b},{score:{name:"#value",objective:"pc.hp"}},{text:"/"},{score:{name:"#value",objective:"pc.hpmax"}},{text:" HP"},{text:" ❤\n",bold:0b}]