## usage : give player item from using give / replace
## (storage) pc:temp item

execute unless data storage pc:temp item run return run tellraw @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] "\u00a7e\u00a7l[DEBUG]\u00a7r No storage pc:temp item"
execute summon item_display run function pc:sys/item/summon/2 with storage pc:temp item

scoreboard players set #is_give pc.main 0
$function pc:sys/item/summon/3 {slot:"$(slot)"}
$execute if score #is_give pc.main matches 0 run function pc:sys/item/summon/3b {slot:"$(slot)"}

kill @e[tag=pc.summon,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0]
data remove storage pc:temp item