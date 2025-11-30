
# effect
execute store result score #temp pc.main run data get storage pc:temp money.value
scoreboard players operation #temp pc.main /= #2 sl.value

execute store result score #money pc.main run data get storage pc:temp money.value_extra
execute store result storage pc:temp money.value_extra int 1 run scoreboard players operation #money pc.main += #temp pc.main