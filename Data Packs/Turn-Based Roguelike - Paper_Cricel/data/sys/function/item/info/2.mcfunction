
execute unless data storage pc:temp infocheck.effects run return run function sys:item/info/2b

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s ["",{color:"gray",text:">>"},{bold:true,color:"#72BD7A",text:"> "},{nbt:"sys.item.feature.title",storage:"pc:lang",interpret:true}]

data modify storage pc:temp infocheck.effects[].category set value "effect"
function sys:effect/checker/update/loop with storage pc:temp infocheck.effects[0]
tellraw @s {storage:"pc:temp",nbt:"infocheck.effect[]",separator:"\n",interpret:1b}

# fx
playsound minecraft:block.crop.break master @s ~ ~1024 ~ 0 2 1
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~1024 ~ 0 2 1
