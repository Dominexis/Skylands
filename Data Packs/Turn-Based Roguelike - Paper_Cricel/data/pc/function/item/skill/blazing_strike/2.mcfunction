
# effect
function pc:sys/grid/select/mob

scoreboard players set #damage pc.main 180
function pc:sys/object/damage/atker

scoreboard players set #value pc.main 4
function pc:passive/effect/apply_grid {effect:"fire_area"}

function pc:sys/grid/select/clear

# fx
particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.0f} ~ ~ ~ 0.2 0.2 0.2 1 40 force
particle minecraft:dust{color:[1.0,0.58,0.259],scale:1.0f} ~ ~1 ~ 0.4 0.2 0.4 1 50 force
particle minecraft:dust{color:[1.0,0.863,0.49],scale:1.0f} ~ ~2 ~ 0.6 0.2 0.6 1 60 force