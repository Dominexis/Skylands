# /!\ Uncompiled
# Args :
#   - seed (macro)
##

data modify storage synb.d:values map_active set value 1

scoreboard objectives add synb.TickCycle dummy

scoreboard objectives add synb.Tmp.Expr dummy
scoreboard objectives add synb.Tmp.Arg dummy
scoreboard objectives add synb.Tmp.Ctx dummy

scoreboard objectives add synb.Const dummy
function synb:_g_consts
scoreboard objectives add synb.Info dummy

setblock 3328 50 -2304 minecraft:barrel
data modify block 3328 50 -2304 Items append value {count:1,id:"minecraft:stone"}
data modify block 3328 50 -2304 Items append value {count:1,id:"minecraft:stone"}

# Seed
$random reset synb.r:run_rng $(seed) false false
$tellraw @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player]  [{"text":"[Synb] ","color":"gray"},{"text":"Seed : $(seed)","color":"gold"}]

# Values
data modify storage synb.d:values money_item_components set value {"minecraft:max_stack_size":99,"minecraft:custom_data":{ug_item:true}, \
    "tooltip_display":{hidden_components:["enchantments"]}, \
    "minecraft:enchantments":{"minecraft:mending":1}, \
    "minecraft:item_name":{"color":"aqua","italic":false,"text":"Ancient Crystal"}, \
    "minecraft:lore":[{"color":"gray","italic":false,"text":"Can be used in the shop."},{"color":"gray","italic":false,"text":"Disappears when uncollected for too long."}]}

# [SKYLANDS: ABSCOORDS]
summon minecraft:marker 3352 69 -2399 {Tags:["synb.mark.hub"]}
summon minecraft:marker 3338 69 -2339 {Tags:["synb.mark.hardmode_stand"]}

# All inits
function synb:status/g_init
function synb:itemengine/g_init
function synb:enemies/g_init
function synb:utils/visuals/g_init
function synb:arenasys/g_init
function synb:elements/g_init
function synb:world/g_init
function synb:g_decorations