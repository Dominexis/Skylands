
# effect
scoreboard players operation #value pc.hp = @s pc.hp
scoreboard players operation #value pc.hpmax = @s pc.hpmax
scoreboard players operation #value pc.hp /= #10 sl.value
scoreboard players operation #value pc.hpmax /= #10 sl.value

data modify storage pc:temp actionbar.display.hp set value [{color:"#f95353",text:""},{font:"pc:default",text:"8",color:"white"},{text:" HP ",bold:1b},{text:"["},{score:{name:"#value",objective:"pc.hp"}},{text:"/"},{score:{name:"#value",objective:"pc.hpmax"}},{text:"]"}]

# Actionbar Offset
execute if score #value pc.hp matches 10.. run scoreboard players add #offset pc.main 1
execute if score #value pc.hpmax matches 10.. run scoreboard players add #offset pc.main 1
execute if score #value pc.hp matches 100.. run scoreboard players add #offset pc.main 1
execute if score #value pc.hpmax matches 100.. run scoreboard players add #offset pc.main 1