# Reset noteblock
fill ~ ~ ~ ~ ~ ~ minecraft:note_block[note=0,instrument=bass] replace minecraft:note_block

# Check if requesting hint
$execute if entity @p[distance=..5, nbt={SelectedItem:{id:"minecraft:paper"}}] run function epc:hint {hintnum:$(num),color:$(color),level:$(level)}

# Play sound
$playsound $(sound) block @a[distance=..256] ~ ~ ~