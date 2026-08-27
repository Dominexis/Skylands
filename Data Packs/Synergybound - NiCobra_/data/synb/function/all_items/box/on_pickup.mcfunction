# REMEMEBR TO UPDATE INDEX
execute store result storage synb.d:tmp args.rand_choice int 1 run random value 0..16 synb.r:run_rng
function synb:all_items/box/_give_item with storage synb.d:tmp args
execute store result storage synb.d:tmp args.rand_choice int 1 run random value 0..16 synb.r:run_rng
function synb:all_items/box/_give_item with storage synb.d:tmp args

function synb:itemengine/player/heal {heal_amount:2}