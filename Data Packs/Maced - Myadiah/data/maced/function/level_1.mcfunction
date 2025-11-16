execute positioned 1792 64 256 run kill @e[type=turtle,tag=maced.mob,distance=..250]



execute if score checkpoint_count maced.Scores matches 1 run summon turtle 1792 61.5 249 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}


execute if score checkpoint_count maced.Scores matches 2 run summon turtle 1792 61.5 238 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}

execute if score checkpoint_count maced.Scores matches 2 run summon turtle 1792 62.5 228 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}
execute if score checkpoint_count maced.Scores matches 2 run summon turtle 1792 62.5 222 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}
execute if score checkpoint_count maced.Scores matches 2 run summon turtle 1792 62.5 216 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}

execute if score checkpoint_count maced.Scores matches 2 if entity @s[team=sl.player,tag=maced.in_game,scores={maced.info=3..}] run scoreboard players set @s maced.info 4
execute positioned 1792 64 256 if score checkpoint_count maced.Scores matches 2 if entity @a[team=sl.player,tag=maced.in_game,distance=..250,scores={maced.info=4}] as @a[team=sl.player,tag=maced.in_game,distance=..250,scores={maced.info=4}] run trigger maced.info_trigger


execute if score checkpoint_count maced.Scores matches 3 run summon turtle 1792 63.5 205 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}
execute if score checkpoint_count maced.Scores matches 3 run summon turtle 1792 68 201 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}

execute if score checkpoint_count maced.Scores matches 3 run summon turtle 1792 70 193 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}
execute if score checkpoint_count maced.Scores matches 3 run summon turtle 1792 74 189 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}
execute if score checkpoint_count maced.Scores matches 3 run summon turtle 1792 79 189 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}
execute if score checkpoint_count maced.Scores matches 3 run summon turtle 1792 83 189 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}


execute if score checkpoint_count maced.Scores matches 4 run summon turtle 1792 73 178 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}
execute if score checkpoint_count maced.Scores matches 4 run summon turtle 1792 61 165 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}
execute if score checkpoint_count maced.Scores matches 4 run summon turtle 1792 62 160 {Team:"sl.no_collision",Tags:["maced.mob"],NoGravity:1b,Silent:1b,NoAI:1b,Health:1f}


execute if score checkpoint_count maced.Scores matches 5 run setblock 1792 64 256 gold_block