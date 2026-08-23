
execute store result score #scale pc.main if entity @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player]
scoreboard players operation #money pc.main *= #scale pc.main
scoreboard players operation #money.extra pc.main *= #scale pc.main

# value
scoreboard players operation $money pc.game += #money pc.main
scoreboard players operation $money pc.game += #money.extra pc.main

# fx
function pc:sys/combat/end/win/money/disp_type
tellraw @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] [{text:"* ",color:"gray",type:"text"},{nbt:"sys.combat.obtain",storage:"pc:lang",interpret:1b,type:"nbt"},{nbt:"money.display",storage:"pc:temp",interpret:1b,source:"storage",type:"nbt"}," ",{nbt:"sys.combat.money",storage:"pc:lang",interpret:1b,type:"nbt"},{"font":"pc:sys/icon","text":"3",color:"white",type:"text"}]

data remove storage pc:temp money