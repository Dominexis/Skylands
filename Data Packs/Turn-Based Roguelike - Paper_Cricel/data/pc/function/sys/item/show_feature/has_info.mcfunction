
# display
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s ["",{color:"gray",text:">>"},{bold:true,text:"",extra:[{color:"#72bd7a",text:"> "},{color:"#a7dfa4",text:"Item Effect"}]}]
function pc:passive/effect/info
tellraw @s {storage:"pc:temp",nbt:"info.display[]",separator:"\n",interpret:true}

# fx
playsound minecraft:block.crop.break master @s ~ ~ ~ 1 2
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 2