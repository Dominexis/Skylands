
execute unless data entity @s data.hotbar.legs.combat.power_through run return fail

# fx
scoreboard players operation #self sl.id = @s sl.id
tellraw @a[predicate=sl:player,predicate=pc:sys/owner/player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ["",{text:"* Your ",color:"red"},{nbt:"data.inventory.equipment.legs.components.minecraft:item_name",storage:"pc:utils",interpret:1b},{text:" has beed destoryed.",color:"red"}]

playsound minecraft:entity.iron_golem.death master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.item.break master @a ~ ~1024 ~ 0 1 0.5

particle item{item:"iron_block"} ~ ~ ~ 0 0 0 0.2 60 force
particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.2 0 0.2 0 5 force

data remove storage pc:utils data.inventory.equipment.legs