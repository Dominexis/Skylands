
tag @s add pc.entity.ender_dragon.buff1.used
function sys:entity/schedule/use {func:"function entity:ender_dragon/buff1/2",delay:20}

# fx
execute on passengers if entity @s[tag=pc.entity.ender_dragon.skin,type=item_display] run function entity:ender_dragon/fx/buff1/use