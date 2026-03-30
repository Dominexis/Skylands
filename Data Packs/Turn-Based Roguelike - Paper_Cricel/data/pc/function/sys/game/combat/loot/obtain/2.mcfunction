
# effect
$function pc:sys/item/summon {loot:"pc:item/$(category)/$(item)"}

# fx
tellraw @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:player/ingame,predicate=sl:player] [{text:"* ",color:"gray",type:"text"},{selector:"@s",type:"selector"},{text:" picked up ",type:"text"},{nbt:"loot.minecraft:item_name",storage:"pc:temp",interpret:1b,color:"white",source:"storage",type:"nbt"}]
playsound minecraft:entity.player.levelup master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.25 2
playsound minecraft:entity.item.pickup master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~