# Makes sure that the player doesn't flip the trapdoors and break the ladders
execute if block -1792 246 -6406 copper_trapdoor[open=false] run function celpel:targets/replace_top_ladder
execute if block -1792 245 -6406 copper_trapdoor[open=false] run function celpel:targets/replace_bottom_ladder