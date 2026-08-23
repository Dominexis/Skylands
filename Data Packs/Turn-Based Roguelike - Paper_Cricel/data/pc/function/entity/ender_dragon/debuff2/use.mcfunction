
function pc:sys/entity/schedule/use {func:"execute as @e[tag=pc.intent.now,type=marker] at @s run function pc:entity/ender_dragon/debuff2/2",delay:30}
function pc:sys/entity/schedule/use {func:"function pc:sys/combat/turn/end_act",delay:50}

# fx
execute on passengers if entity @s[tag=pc.entity.ender_dragon.skin,type=item_display] at @s run function pc:entity/ender_dragon/fx/debuff2/use