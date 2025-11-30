
$execute store result storage pc:temp passive.math_temp float $(value) run scoreboard players get $(var) pc.main
$execute store result score $(var) pc.main run data get storage pc:temp passive.math_temp
data remove storage pc:temp passive.math_temp