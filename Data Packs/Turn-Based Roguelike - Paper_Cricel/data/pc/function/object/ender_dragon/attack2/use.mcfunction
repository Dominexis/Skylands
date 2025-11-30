
# effect
scoreboard players set $game.acting_time pc.main 31
function pc:sys/object/schedule/use {func:"function pc:object/ender_dragon/attack2/shockwave/use",delay:10}
function pc:sys/object/schedule/use {func:"function pc:object/ender_dragon/attack2/2",delay:18}

# fx
function pc:object/ender_dragon/attack2/charge/use