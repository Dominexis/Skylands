
# execute store result score #damage pc.main run function item:skill/warrior/cactus/get_x with storage pc:temp rc_item
scoreboard players set #damage pc.main 3

function sys:entity/schedule/use {func:"function item:skill/warrior/cactus/2",delay:1}
function sys:entity/schedule/use {func:"function item:skill/warrior/cactus/2",delay:3}
function sys:entity/schedule/use {func:"function sys:combat/turn/end_act",delay:3}