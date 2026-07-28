
execute store result score #value pc.main run data get storage pc:temp loot.money
scoreboard players operation $money pc.game += #value pc.main

# fx
tellraw @a ["",{text:"* ",color:"gray",type:"text"},{selector:"@s",color:"gray",type:"selector"},{nbt:"sys.combat.picked_up",storage:"pc:lang",interpret:1b,type:"nbt"},{score:{name:"#value",objective:"pc.main"},color:"gold",bold:1b}," ",{nbt:"sys.combat.money",storage:"pc:lang",interpret:1b,type:"nbt"},{"font":"sys:icon","text":"3",color:"white",type:"text"}]
playsound minecraft:entity.player.levelup master @a ~ ~1024 ~ 0 2 0.25
playsound minecraft:entity.item.pickup master @a ~ ~1024 ~ 0 1 1