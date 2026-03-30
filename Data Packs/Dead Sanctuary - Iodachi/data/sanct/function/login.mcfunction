
# Reset player
scoreboard players reset @s sanct.death
scoreboard players reset @s sanct.spell.rune
scoreboard players reset @s sanct.spell.teleport_item
function sl:api/disable_saturation
effect give @s minecraft:hunger 2 255 true
effect give @s minecraft:invisibility 1 0 true

# Set up player
scoreboard players enable @s sanct.trigger
scoreboard players set @s sanct.thrown_book_time 0
scoreboard players set @s sanct.respawn_timer 0
function sanct:player/storage/create
execute if score #no_danger sanct.numbers matches 1.. run function sanct:spell/ritual/no_danger/apply with storage sanct:storage root.ritual.no_danger.stat

# Teleport player into island
execute unless score #tutorial_exited sanct.numbers matches 1 run tp @s -2318 83 2317 180 0
execute if score #tutorial_exited sanct.numbers matches 1 run tp @s @r[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,scores={sanct.respawn_timer=0}]
execute if entity @s[x=-2310,y=7,z=2307,distance=..1] run function sanct:player/death/respawn/respawn

# Lock recipes
advancement grant @s only minecraft:recipes/misc/writable_book
advancement grant @s only minecraft:recipes/misc/bone_meal
advancement grant @s only minecraft:recipes/misc/mojang_banner_pattern
advancement grant @s only minecraft:recipes/food/mushroom_stew
advancement grant @s only minecraft:recipes/building_blocks/snow_block
recipe take @s *

# Set inventory
loot give @s loot sanct:book_closed
item replace entity @s weapon.offhand with minecraft:arrow[minecraft:max_stack_size=1,minecraft:custom_data={stat_page:1b},minecraft:item_name="§d§nRituals:",minecraft:item_model="sanct:page"]
function sanct:inventory/page/update
scoreboard players set @s sanct.locked_inventory 33
function sanct:inventory/lock/hotbar
function sanct:inventory/lock/bottom
function sanct:inventory/lock/middle
function sanct:inventory/lock/top

# Activate advancments
advancement grant @s only sanct:tags active

# Catch experience up to active players
execute unless score #experience_total sanct.numbers matches 1.. run return 1
execute store result storage sanct:storage root.experience.total short 1 run scoreboard players get #experience_total sanct.numbers
function sanct:player/catchup_experience with storage sanct:storage root.experience