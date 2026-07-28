## usage : give player item from using give / replace
## (storage) pc:temp item

execute unless data storage pc:temp item run return run say §e§l[DEBUG]§r No storage pc:temp item
execute summon item_display run function sys:item/summon/2 with storage pc:temp item

scoreboard players set #is_give pc.main 0
$function sys:item/summon/3 {slot:"$(slot)"}
$execute if score #is_give pc.main matches 0 run function sys:item/summon/3b {slot:"$(slot)"}

kill @e[tag=pc.summon,type=item_display,limit=1]
data remove storage pc:temp item