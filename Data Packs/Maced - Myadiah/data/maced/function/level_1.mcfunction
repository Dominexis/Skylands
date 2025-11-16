execute positioned 5888 64 -3328 run kill @e[type=minecraft:turtle,distance=..250,tag=maced.mob]



execute if score checkpoint_count maced.Scores matches 1 run summon minecraft:turtle 5888 61.5 -3335 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}


execute if score checkpoint_count maced.Scores matches 2 run summon minecraft:turtle 5888 61.5 -3346 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}

execute if score checkpoint_count maced.Scores matches 2 run summon minecraft:turtle 5888 62.5 -3356 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}
execute if score checkpoint_count maced.Scores matches 2 run summon minecraft:turtle 5888 62.5 -3362 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}
execute if score checkpoint_count maced.Scores matches 2 run summon minecraft:turtle 5888 62.5 -3368 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}

execute if score checkpoint_count maced.Scores matches 2 if entity @s[tag=maced.in_game,scores={maced.info=3..},team=sl.player] run scoreboard players set @s maced.info 4
execute positioned 5888 64 -3328 if score checkpoint_count maced.Scores matches 2 if entity @a[distance=..250,tag=maced.in_game,scores={maced.info=4},team=sl.player] as @a[distance=..250,tag=maced.in_game,scores={maced.info=4},team=sl.player] run trigger maced.info_trigger


execute if score checkpoint_count maced.Scores matches 3 run summon minecraft:turtle 5888 63.5 -3379 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}
execute if score checkpoint_count maced.Scores matches 3 run summon minecraft:turtle 5888 68 -3383 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}

execute if score checkpoint_count maced.Scores matches 3 run summon minecraft:turtle 5888 70 -3391 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}
execute if score checkpoint_count maced.Scores matches 3 run summon minecraft:turtle 5888 74 -3395 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}
execute if score checkpoint_count maced.Scores matches 3 run summon minecraft:turtle 5888 79 -3395 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}
execute if score checkpoint_count maced.Scores matches 3 run summon minecraft:turtle 5888 83 -3395 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}


execute if score checkpoint_count maced.Scores matches 4 run summon minecraft:turtle 5888 73 -3406 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}
execute if score checkpoint_count maced.Scores matches 4 run summon minecraft:turtle 5888 61 -3419 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}
execute if score checkpoint_count maced.Scores matches 4 run summon minecraft:turtle 5888 62 -3424 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1.0f}


execute if score checkpoint_count maced.Scores matches 5 run setblock 5888 64 -3328 minecraft:gold_block