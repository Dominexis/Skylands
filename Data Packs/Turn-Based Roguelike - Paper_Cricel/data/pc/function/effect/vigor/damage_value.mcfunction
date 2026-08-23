
execute unless entity @s[tag=pc.atker] run return fail

execute store result score #damage.extra pc.main run data get storage pc:temp passive.current.value
scoreboard players operation #damage pc.main += #damage.extra pc.main