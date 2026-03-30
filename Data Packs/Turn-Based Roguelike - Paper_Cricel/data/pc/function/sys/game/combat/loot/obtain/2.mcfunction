
# effect
$function pc:sys/item/summon {loot:'pc:item/$(category)/$(item)'}

# fx
tellraw @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] [{text:"* ",color: "gray"},{"selector": "@s"},{text:" picked up "},{nbt:"loot.minecraft:item_name","storage": "pc:temp","interpret": true,color: "white"}]
playsound minecraft:entity.player.levelup master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.25 2
playsound minecraft:entity.item.pickup master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~