
data modify storage pc:temp effect set value {id:'rail_area',type:'unstackable'}
function pc:sys/effect/apply

# fx
playsound minecraft:block.smithing_table.use master @a ~ ~1024 ~ 0 2 1
playsound minecraft:block.ender_chest.open master @a ~ ~1024 ~ 0 1 1