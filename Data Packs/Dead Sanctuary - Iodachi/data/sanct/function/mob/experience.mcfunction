execute store result storage sanct:storage root.experience.pitch float 0.01 run random value 55..125

$playsound minecraft:entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ .7 $(pitch)

execute if entity @s[level=30..] unless score #barrier_unlocked sanct.numbers matches 1.. run function sanct:plot/goal/unlock