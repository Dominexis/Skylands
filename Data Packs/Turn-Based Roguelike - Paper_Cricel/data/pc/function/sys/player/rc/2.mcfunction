
# if (end turn) :
execute if data storage pc:temp rc_item{category:'end_turn'} run return run function pc:sys/combat/turn/player/end

# elif (looking enemy's intent) :
execute if entity @e[tag=pc.select.object,predicate=pc:sys/entity/any_real,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,type=!minecraft:giant] run return fail

# elif (repair grid) :
execute if function pc:sys/player/rc/is_repair run return run function pc:sys/entity/repair/use

# elif (selectable grid == false) :
execute unless entity @e[tag=pc.grid.selecting,type=minecraft:marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run return run function pc:sys/player/rc/fail/select

# else :
execute as @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/player/rc/3 with storage pc:temp rc_item