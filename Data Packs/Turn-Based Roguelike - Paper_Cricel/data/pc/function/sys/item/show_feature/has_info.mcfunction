
# display
tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s ["",{color:"gray",text:">>",type:"text"},{bold:1b,text:"",extra:[{color:"#72BD7A",text:"> ",type:"text"},{color:"#A7DFA4",text:"Item Effect",type:"text"}],type:"text"}]
function pc:passive/effect/info
tellraw @s {storage:"pc:temp",nbt:"info.display[]",separator:"\n",interpret:1b,source:"storage",type:"nbt"}

# fx
playsound minecraft:block.crop.break master @s ~ ~ ~ 1 2
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 2