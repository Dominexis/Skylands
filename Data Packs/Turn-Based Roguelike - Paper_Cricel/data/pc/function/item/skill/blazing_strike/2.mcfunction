
# effect
function pc:sys/grid/select/mob

scoreboard players set #damage pc.main 180
function pc:sys/object/damage/atker

scoreboard players set #value pc.main 4
function pc:passive/effect/apply_grid {effect:fire_area}

function pc:sys/grid/select/clear

# fx
particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0.2 0.2 0.2 1 40 force
particle dust{color:[1.000,0.580,0.259],scale:1} ~ ~1 ~ 0.4 0.2 0.4 1 50 force
particle dust{color:[1.000,0.863,0.490],scale:1} ~ ~2 ~ 0.6 0.2 0.6 1 60 force