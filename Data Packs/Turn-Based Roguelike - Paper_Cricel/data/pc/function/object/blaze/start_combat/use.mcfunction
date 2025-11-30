
# effect
scoreboard players set #value pc.main 1
function pc:sys/utils/math/set {id:"entity @s data.effect.shield_buffer"}

scoreboard players set #value pc.main 12
function pc:passive/effect/apply_grid {effect:crimson_area}