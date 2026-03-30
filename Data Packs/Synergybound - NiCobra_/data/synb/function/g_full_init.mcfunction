##

execute store result storage synb.d:tmp args.seed int 1 run random value 0..2147483646
function synb:g_full_init_seeded with storage synb.d:tmp args