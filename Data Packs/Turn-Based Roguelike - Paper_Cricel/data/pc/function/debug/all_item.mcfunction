## DEBUG: summon every item into the two review chests
## Chest A @ 2524 2 5495 | Chest B @ 2524 2 5494  (container.0~26 each)

# clear both chests first
data modify block 2524 2 5495 Items set value []
data modify block 2524 2 5494 Items set value []

# --- Chest A (2524 2 5495) ---
function pc:item/move/basic/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.0"}
function pc:item/move/bishop/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.1"}
function pc:item/move/ender_pearl/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.2"}
function pc:item/move/jump/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.3"}
function pc:item/move/minecart/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.4"}
function pc:item/repair/basic/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.5"}
function pc:item/repair/curious/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.6"}
function pc:item/repair/magma/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.7"}
function pc:item/repair/rugged/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.8"}
function pc:item/repair/wireless/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.9"}
function pc:item/skill/warrior/biased_force/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.11"}
function pc:item/skill/warrior/blazing_meteorite/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.12"}
function pc:item/skill/warrior/borrowed_time/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.13"}
function pc:item/skill/warrior/brittle_assault/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.14"}
function pc:item/skill/warrior/cactus/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.15"}
function pc:item/skill/warrior/dejavu/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.17"}
function pc:item/skill/warrior/deterrence/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.18"}
function pc:item/skill/warrior/engulfed_pain/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.19"}
function pc:item/skill/warrior/fading_compass/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.20"}
function pc:item/skill/warrior/flint_and_steel/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.21"}
function pc:item/skill/warrior/heal_liquor/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.22"}
function pc:item/skill/warrior/hemorrhage/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.23"}
function pc:item/skill/warrior/inferno/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.24"}
function pc:item/skill/warrior/momentum/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.25"}
function pc:item/skill/warrior/op_potion/data
execute positioned 2524 2 5495 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.26"}
# --- Chest B (2524 2 5494) ---
function pc:item/skill/warrior/parrying/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.0"}
function pc:item/skill/warrior/repair_jade/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.1"}
function pc:item/skill/warrior/silent_axe/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.2"}
function pc:item/skill/warrior/taunt/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.3"}
function pc:item/skill/warrior/training_sword/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.4"}
function pc:item/skill/warrior/yama_double/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.5"}
function pc:item/head/frenzied/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.6"}
function pc:item/head/gold_greed/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.7"}
function pc:item/head/min_passion/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.8"}
function pc:item/chest/entrench/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.9"}
function pc:item/chest/glass_cannon/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.10"}
function pc:item/chest/repair_core/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.11"}
function pc:item/legs/iron_resolve/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.12"}
function pc:item/legs/jerk_reflex/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.13"}
function pc:item/legs/residual_defense/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.14"}
function pc:item/feet/footwork/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.15"}
function pc:item/feet/energy_surge/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.16"}
function pc:item/feet/vigilance/data
execute positioned 2524 2 5494 run function pc:sys/item/summon/use {slot:"block ~ ~ ~ container.17"}
