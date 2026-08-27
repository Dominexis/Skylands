## (storage) pc:temp rc_item

# if (no ep) :
execute store result score #epcost pc.main run data get storage pc:temp rc_item.ep.value
execute if score @s pc.ep < #epcost pc.main as @a[tag=pc.self,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run return run function pc:sys/player/rc/fail/ep

# elif (no db) :
scoreboard players set #dbcost pc.main 1
$function pc:item/$(category)/$(id)/db_cost
$execute store result score #db pc.main run data get entity @s data.hotbar.$(hotbar).db.value
execute unless score #db pc.main matches -1 if score #db pc.main < #dbcost pc.main as @a[tag=pc.self,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run return run function pc:sys/player/rc/fail/db

# else :
tag @s add pc.atker
scoreboard players set @s pc.entity.inturn 1
execute as @e[tag=pc.grid.selecting,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/player/rc/3/grid

scoreboard players set $act.team pc.game 1
scoreboard players set $act.running pc.game 1

$function pc:sys/utils/passive/use {passive:"use_$(category)"}
function pc:sys/utils/passive/use {passive:"use_item"}

# db before ep: consume_db listeners (energy_surge) capture pre-cost energy
$function pc:sys/player/rc/3/db {hotbar:"$(hotbar)"}
function pc:sys/item/ep/use

$execute at @e[tag=pc.player.selector,predicate=pc:sys/entity/any_real,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run function pc:item/$(category)/$(id)/use