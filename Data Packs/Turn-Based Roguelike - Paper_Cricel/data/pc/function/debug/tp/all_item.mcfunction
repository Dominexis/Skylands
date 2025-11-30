
# Player Only
tp @s 2516 1 5548 -90 0
tellraw @s [{text:"* Teleport you to Debug Platform!",color:"gray"}]
execute at @s run playsound minecraft:entity.enderman.teleport master @s

# Item
    # Armor & Move & Repair
loot replace block 2519 2 5548 container.0 loot pc:item/head/frenzied
loot replace block 2519 2 5548 container.9 loot pc:item/head/gold_greed
loot replace block 2519 2 5548 container.18 loot pc:item/head/min_passion

loot replace block 2519 2 5548 container.1 loot pc:item/chest/glass_cannon
loot replace block 2519 2 5548 container.10 loot pc:item/chest/literally_armor
loot replace block 2519 2 5548 container.19 loot pc:item/chest/repair_core

loot replace block 2519 2 5548 container.2 loot pc:item/legs/iron_resolve
loot replace block 2519 2 5548 container.11 loot pc:item/legs/jerk_reflex
loot replace block 2519 2 5548 container.20 loot pc:item/legs/residual_defense

loot replace block 2519 2 5548 container.3 loot pc:item/feet/energy_walker
loot replace block 2519 2 5548 container.12 loot pc:item/feet/set_position
loot replace block 2519 2 5548 container.21 loot pc:item/feet/vigilance

loot replace block 2519 2 5548 container.4 loot pc:item/move/basic
loot replace block 2519 2 5548 container.5 loot pc:item/move/bishop
loot replace block 2519 2 5548 container.6 loot pc:item/move/ender_pearl
loot replace block 2519 2 5548 container.7 loot pc:item/move/jump
loot replace block 2519 2 5548 container.8 loot pc:item/move/minecart

loot replace block 2519 2 5548 container.13 loot pc:item/repair/basic
loot replace block 2519 2 5548 container.14 loot pc:item/repair/emergency
loot replace block 2519 2 5548 container.15 loot pc:item/repair/rugged
loot replace block 2519 2 5548 container.16 loot pc:item/repair/teen
loot replace block 2519 2 5548 container.17 loot pc:item/repair/wireless

    # Skill
loot replace block 2519 1 5548 container.0 loot pc:item/skill/attack_momentum
loot replace block 2519 1 5548 container.1 loot pc:item/skill/bandage
loot replace block 2519 1 5548 container.2 loot pc:item/skill/blazing_strike
loot replace block 2519 1 5548 container.3 loot pc:item/skill/bow
loot replace block 2519 1 5548 container.4 loot pc:item/skill/brittle_assault
loot replace block 2519 1 5548 container.5 loot pc:item/skill/cactus
loot replace block 2519 1 5548 container.6 loot pc:item/skill/defense
loot replace block 2519 1 5548 container.7 loot pc:item/skill/energy_overdraft
loot replace block 2519 1 5548 container.8 loot pc:item/skill/fading_compass
loot replace block 2519 1 5548 container.9 loot pc:item/skill/flint_and_steel
loot replace block 2519 1 5548 container.10 loot pc:item/skill/heal_liquor
loot replace block 2519 1 5548 container.11 loot pc:item/skill/keen_insight
loot replace block 2519 1 5548 container.12 loot pc:item/skill/op_potion
loot replace block 2519 1 5548 container.13 loot pc:item/skill/panic_strike
loot replace block 2519 1 5548 container.14 loot pc:item/skill/parrying
loot replace block 2519 1 5548 container.15 loot pc:item/skill/pestilent_rampage
loot replace block 2519 1 5548 container.16 loot pc:item/skill/pinpoint_strike
loot replace block 2519 1 5548 container.17 loot pc:item/skill/saber_strike
loot replace block 2519 1 5548 container.18 loot pc:item/skill/shut_up_of_axe
loot replace block 2519 1 5548 container.19 loot pc:item/skill/strength_potion
loot replace block 2519 1 5548 container.20 loot pc:item/skill/strike

# Refresh
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.0"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.1"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.2"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.3"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.4"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.5"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.6"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.7"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.8"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.9"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.10"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.11"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.12"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.13"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.14"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.15"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.16"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.17"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.18"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.19"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.20"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.21"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.22"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.23"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.24"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.25"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 1 5548 container.26"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.0"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.1"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.2"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.3"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.4"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.5"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.6"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.7"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.8"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.9"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.10"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.11"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.12"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.13"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.14"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.15"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.16"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.17"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.18"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.19"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.20"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.21"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.22"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.23"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.24"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.25"}
function pc:sys/item/refresh/use
data modify storage pc:temp desc set value {slot:"block 2519 2 5548 container.26"}
function pc:sys/item/refresh/use