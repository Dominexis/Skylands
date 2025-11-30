
# effect
$execute store result score #now pc.main run data get storage pc:game shop.$(category).now.$(id)
$execute store result storage pc:game shop.$(category).now.$(id) int 1 run scoreboard players operation #now pc.main += #increase pc.main