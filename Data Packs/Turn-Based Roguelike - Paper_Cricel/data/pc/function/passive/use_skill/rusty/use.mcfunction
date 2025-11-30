
# effect
function pc:sys/player/owner/find
data modify storage pc:temp repair.category set from entity @p[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.sys.passive,predicate=sl:player] SelectedItem.components."minecraft:custom_data".pc.category
data modify storage pc:temp repair.value set value -1
function pc:sys/item/durability/use
function pc:sys/player/owner/clear

# fx
function pc:fx/text/use {text:[{text:"Rusty",color:"#5f361b"}]}
playsound minecraft:block.grindstone.use master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 1
playsound minecraft:entity.item.break master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.25 1