
# effect
scoreboard players set #value pc.main 4
function pc:passive/effect/apply {effect:strength}

scoreboard players set #value pc.main 60
function pc:passive/effect/apply {effect:regeneration}

scoreboard players set #value pc.main 4
function pc:passive/effect/apply_grid {effect:crimson_area}

data modify entity @s data.brain.buff1 set value 4