
# effect
tag @s remove pc.intent_icon
tag @s add pc.intent_icon.clear
scoreboard players reset @s pc.duration

data merge entity @s {transformation:{scale:[0.0f,0.0f,0.0f]},start_interpolation:0,interpolation_duration:5}