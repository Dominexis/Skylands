
execute store result score #value pc.main run data get storage pc:temp loot.money
scoreboard players operation $money pc.game += #value pc.main

# fx
tellraw @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ["",{text:"* ",color:"gray",type:"text"},{selector:"@s",color:"gray",type:"selector"},{nbt:"sys.combat.picked_up",storage:"pc:lang",interpret:1b,type:"nbt"},{score:{name:"#value",objective:"pc.main"},color:"gold",bold:1b}," ",{nbt:"sys.combat.money",storage:"pc:lang",interpret:1b,type:"nbt"},{"font":"pc:sys/icon","text":"3",color:"white",type:"text"}]
playsound minecraft:entity.player.levelup master @a ~ ~1024 ~ 0 2 0.25
playsound minecraft:entity.item.pickup master @a ~ ~1024 ~ 0 1 1