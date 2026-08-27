# Music Timer
scoreboard players set @a[scores={MusicID=999}] MusicTimer 0
scoreboard players set @a[scores={MusicID=999}] MusicPhase 0
scoreboard players set @a[scores={MusicID=999}] MusicProgress 0
scoreboard players add @a[scores={MusicID=..998}] MusicTimer 1

# Enter the Darkness after Intro
playsound minecraft:music.enter_the_darkness.loop record @a[scores={MusicID=0,MusicProgress=0,MusicTimer=298..}] ~ ~ ~ 1.0 1.0 1.0
scoreboard players set @a[scores={MusicID=0,MusicProgress=0,MusicTimer=298..}] MusicProgress 1
scoreboard players set @a[scores={MusicID=0,MusicProgress=1,MusicTimer=298..}] MusicTimer 0
scoreboard players set @a[scores={MusicID=0,MusicProgress=1,MusicTimer=0}] MusicProgress 2
# Enter the Darkness Loop
playsound minecraft:music.enter_the_darkness.loop record @a[scores={MusicID=0,MusicProgress=2,MusicTimer=6660..}] ~ ~ ~ 1.0 1.0 1.0
scoreboard players set @a[scores={MusicID=0,MusicProgress=2,MusicTimer=6660..}] MusicTimer 0

# Deeper into the Abyss
playsound minecraft:music.deeper_into_the_abyss record @a[scores={MusicID=1,MusicTimer=6120..}] ~ ~ ~ 1.0 1.0 1.0
scoreboard players set @a[scores={MusicID=1,MusicTimer=6120..}] MusicTimer 0

# Secrets of the Night Sky
playsound minecraft:music.secrets_of_the_night_sky record @a[scores={MusicID=2,MusicTimer=5800..}] ~ ~ ~ 1.0 1.0 1.0
scoreboard players set @a[scores={MusicID=2,MusicTimer=5800..}] MusicTimer 0

# Evocating Tenebrosity after Intro
playsound minecraft:music.evocating_tenebrosity.loop record @a[scores={MusicID=3,MusicProgress=0,MusicTimer=225..}] ~ ~ ~ 1.0 1.0 1.0
scoreboard players set @a[scores={MusicID=3,MusicProgress=0,MusicTimer=225..}] MusicProgress 1
scoreboard players set @a[scores={MusicID=3,MusicProgress=1,MusicTimer=225..}] MusicTimer 0
scoreboard players set @a[scores={MusicID=3,MusicProgress=1,MusicTimer=0}] MusicProgress 2
# Evocating Tenebrosity Loop
playsound minecraft:music.evocating_tenebrosity.loop record @a[scores={MusicID=3,MusicProgress=2,MusicTimer=1352..}] ~ ~ ~ 1.0 1.0 1.0
scoreboard players set @a[scores={MusicID=3,MusicProgress=2,MusicTimer=1352..}] MusicTimer 0

# Out of pure Spite after Intro
playsound minecraft:music.out_of_pure_spite.loop record @a[scores={MusicID=4,MusicProgress=0,MusicTimer=220..}] ~ ~ ~ 1.0 1.0 1.0
scoreboard players set @a[scores={MusicID=4,MusicProgress=0,MusicTimer=220..}] MusicProgress 1
scoreboard players set @a[scores={MusicID=4,MusicProgress=1,MusicTimer=220..}] MusicTimer 0
scoreboard players set @a[scores={MusicID=4,MusicProgress=1,MusicTimer=0}] MusicProgress 2
# Out of pure Spite Loop
playsound minecraft:music.out_of_pure_spite.loop record @a[scores={MusicID=4,MusicProgress=2,MusicTimer=2272..}] ~ ~ ~ 1.0 1.0 1.0
scoreboard players set @a[scores={MusicID=4,MusicProgress=2,MusicTimer=2272..}] MusicTimer 0