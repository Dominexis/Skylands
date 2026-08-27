
function pc:sys/entity/schedule/use {func:"function pc:entity/ender_dragon/attack1/2",delay:2}
function pc:sys/entity/schedule/use {func:"function pc:entity/ender_dragon/attack1/3",delay:17}

# fx
execute on passengers if entity @s[tag=pc.entity.ender_dragon.skin,type=item_display] run function pc:entity/ender_dragon/fx/attack1/use
execute positioned ^ ^ ^1.5 run function pc:entity/ender_dragon/attack1/blade1/use
function pc:sys/entity/schedule/use {func:"execute positioned ^ ^1 ^1.5 run function pc:entity/ender_dragon/attack1/blade2/use",delay:15}