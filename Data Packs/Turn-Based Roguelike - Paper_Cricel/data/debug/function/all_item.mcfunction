## DEBUG: summon every item into the two review chests
## Chest A @ 2524 2 5495 | Chest B @ 2524 2 5494  (container.0~26 each)

# clear both chests first
data modify block 2524 2 5495 Items set value []
data modify block 2524 2 5494 Items set value []

# --- Chest A (2524 2 5495) ---
function item:move/basic/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.0"}
function item:move/bishop/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.1"}
function item:move/ender_pearl/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.2"}
function item:move/jump/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.3"}
function item:move/minecart/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.4"}
function item:repair/basic/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.5"}
function item:repair/curious/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.6"}
function item:repair/magma/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.7"}
function item:repair/rugged/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.8"}
function item:repair/wireless/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.9"}
function item:skill/warrior/biased_force/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.11"}
function item:skill/warrior/blazing_meteorite/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.12"}
function item:skill/warrior/borrowed_time/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.13"}
function item:skill/warrior/brittle_assault/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.14"}
function item:skill/warrior/cactus/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.15"}
function item:skill/warrior/dejavu/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.17"}
function item:skill/warrior/deterrence/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.18"}
function item:skill/warrior/engulfed_pain/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.19"}
function item:skill/warrior/fading_compass/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.20"}
function item:skill/warrior/flint_and_steel/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.21"}
function item:skill/warrior/heal_liquor/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.22"}
function item:skill/warrior/hemorrhage/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.23"}
function item:skill/warrior/inferno/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.24"}
function item:skill/warrior/momentum/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.25"}
function item:skill/warrior/op_potion/data
execute positioned 2524 2 5495 run function sys:item/summon/use {slot:"block ~ ~ ~ container.26"}
# --- Chest B (2524 2 5494) ---
function item:skill/warrior/parrying/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.0"}
function item:skill/warrior/repair_jade/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.1"}
function item:skill/warrior/silent_axe/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.2"}
function item:skill/warrior/taunt/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.3"}
function item:skill/warrior/training_sword/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.4"}
function item:skill/warrior/yama_double/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.5"}
function item:head/frenzied/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.6"}
function item:head/gold_greed/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.7"}
function item:head/min_passion/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.8"}
function item:chest/entrench/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.9"}
function item:chest/glass_cannon/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.10"}
function item:chest/repair_core/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.11"}
function item:legs/iron_resolve/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.12"}
function item:legs/jerk_reflex/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.13"}
function item:legs/residual_defense/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.14"}
function item:feet/footwork/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.15"}
function item:feet/energy_surge/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.16"}
function item:feet/vigilance/data
execute positioned 2524 2 5494 run function sys:item/summon/use {slot:"block ~ ~ ~ container.17"}
