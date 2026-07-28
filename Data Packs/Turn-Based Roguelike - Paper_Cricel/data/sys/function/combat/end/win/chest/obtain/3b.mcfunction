
$function item:$(category)/$(id)/data
function sys:item/summon/use {slot:"give"}

# fx
tellraw @a [{text:"* ",color:"gray",type:"text"},{selector:"@s",type:"selector"},{nbt:"sys.combat.picked_up",storage:"pc:lang",interpret:1b,type:"nbt"},{nbt:"loot.name",storage:"pc:temp",interpret:1b,color:"white",source:"storage",type:"nbt"}]
playsound minecraft:entity.player.levelup master @a ~ ~1024 ~ 0 2 0.25
playsound minecraft:entity.item.pickup master @a ~ ~1024 ~ 0 1 1