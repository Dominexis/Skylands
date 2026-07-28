
execute store result storage pc:temp grid.selector int 1 run scoreboard players get @e[tag=pc.entity.phantom,type=armor_stand,limit=1] pc.entity.id
$function item:$(category)/$(id)/range

# if (rc_item == move) :
execute unless items entity 20060423-0-0-1-1 contents *[custom_data~{pc:{category:'move'}}] run return fail
data modify storage pc:temp range set value {type:'0',mode:'in_range',avail:{hole:0b}}
function sys:grid/range/use