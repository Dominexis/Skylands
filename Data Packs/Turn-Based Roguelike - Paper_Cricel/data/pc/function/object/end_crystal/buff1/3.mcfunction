
# effect
scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:critical_hit}

scoreboard players set #value pc.main 300
function pc:passive/shield/use

# fx
function pc:fx/buff/use