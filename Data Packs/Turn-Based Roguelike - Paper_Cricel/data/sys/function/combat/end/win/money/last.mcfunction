
execute store result score #scale pc.main if entity @a
scoreboard players operation #money pc.main *= #scale pc.main
scoreboard players operation #money.extra pc.main *= #scale pc.main

# value
scoreboard players operation $money pc.game += #money pc.main
scoreboard players operation $money pc.game += #money.extra pc.main

# fx
function sys:combat/end/win/money/disp_type
tellraw @a [{text:"* ",color:"gray",type:"text"},{nbt:"sys.combat.obtain",storage:"pc:lang",interpret:1b,type:"nbt"},{nbt:"money.display",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}," ",{nbt:"sys.combat.money",storage:"pc:lang",interpret:1b,type:"nbt"},{"font":"sys:icon","text":"3",color:"white",type:"text"}]

data remove storage pc:temp money