
execute unless score #barrier_unlocked sanct.numbers matches 1 run summon minecraft:lightning_bolt

function sanct:mob/skeleton/summon with storage sanct:storage root.summon.skeleton.stat

execute store result score #count sanct.numbers run data get storage sanct:storage root.summon.skeleton.companion_count
execute if score #count sanct.numbers matches 1.. run function sanct:mob/skeleton/companion/summon