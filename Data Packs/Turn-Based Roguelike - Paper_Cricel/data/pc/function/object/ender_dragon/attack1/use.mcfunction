
# effect
scoreboard players set $game.acting_time pc.main 31
function pc:sys/object/schedule/use {func:"function pc:object/ender_dragon/attack1/2",delay:2}
function pc:sys/object/schedule/use {func:"function pc:object/ender_dragon/attack1/2b",delay:17}

# fx
function pc:object/ender_dragon/attack1/motion/use
execute positioned ~ ~-1 ~ run function pc:object/ender_dragon/attack1/blade1/use