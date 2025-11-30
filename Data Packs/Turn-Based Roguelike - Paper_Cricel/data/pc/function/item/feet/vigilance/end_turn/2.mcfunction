
# effect
scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:oneuse_strength}

scoreboard players set #value pc.main 1
function pc:sys/utils/math/set {id:"entity @s data.in_combat.feet.vigilance.obtained"}

# fx
function pc:fx/text/use {text:{color:"#487fbe",text:"Vigilance"}}
particle minecraft:trial_spawner_detection ~ ~ ~ 0.2 0.4 0.4 0.05 10 force
particle minecraft:falling_dripstone_lava ~ ~ ~ 0.2 0.4 0.2 0 50 force