# REMEMEBR TO UPDATE INDEX
execute store result storage synb.d:tmp args.rand_choice int 1 run random value 0..22 synb.r:run_rng
function synb:all_items/magic_mush/_give_item with storage synb.d:tmp args
