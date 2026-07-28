
# if (end turn) :
execute if data storage pc:temp rc_item{category:'end_turn'} run return run function sys:combat/turn/player/end

# elif (looking enemy's intent) :
execute if entity @e[tag=pc.select.object,predicate=sys:entity/any_real,limit=1] run return fail

# elif (repair grid) :
execute if function sys:player/rc/is_repair run return run function sys:entity/repair/use

# elif (selectable grid == false) :
execute unless entity @e[tag=pc.grid.selecting,type=minecraft:marker,limit=1] run return run function sys:player/rc/fail/select

# else :
execute as @e[tag=pc.player.now,type=armor_stand,limit=1] at @s run function sys:player/rc/3 with storage pc:temp rc_item