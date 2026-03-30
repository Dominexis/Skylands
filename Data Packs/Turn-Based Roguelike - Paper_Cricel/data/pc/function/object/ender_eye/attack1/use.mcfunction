
# effect
scoreboard players set $game.acting_time pc.main 35
function pc:sys/object/schedule/use {func:"function pc:object/ender_eye/attack1/2",delay:20}
function pc:sys/object/schedule/use {func:"function pc:object/ender_eye/attack1/2",delay:30}

# fx
function pc:object/ender_eye/attack1/charge/use