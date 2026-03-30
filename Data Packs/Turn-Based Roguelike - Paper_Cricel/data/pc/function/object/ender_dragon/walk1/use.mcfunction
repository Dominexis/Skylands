
# effect
scoreboard players set $game.acting_time pc.main 45

tag @s add pc.mob.ender_dragon.walk1
data modify entity @s teleport_duration set value 1
scoreboard players reset @s pc.duration
function pc:sys/object/rotate/is_diagonal

function pc:object/ender_dragon/walk1/spin_marker/use
#data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [0.0f, 0.0f, 0.0f]},teleport_duration:1}