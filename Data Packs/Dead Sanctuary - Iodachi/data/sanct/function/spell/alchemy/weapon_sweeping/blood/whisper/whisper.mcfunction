
# Get random whisper index
execute store result score #count sanct.numbers run random value 0..99
execute store result score #var sanct.numbers run data get storage sanct:storage root.weapon_sweeping_whisper.list
execute store result storage sanct:storage root.weapon_sweeping_whisper.index byte 0.01 run scoreboard players operation #count sanct.numbers *= #var sanct.numbers

# Send whisper
function sanct:spell/alchemy/weapon_sweeping/blood/whisper/apply with storage sanct:storage root.weapon_sweeping_whisper
playsound minecraft:entity.breeze.idle_ground neutral @s ~ ~ ~ 1 1.5

# Set wait time
scoreboard players set #weapon_sweeping_whisper_delay sanct.numbers 1
execute if data storage sanct:storage root.weapon_sweeping_whisper.list[0] run schedule function sanct:spell/alchemy/weapon_sweeping/blood/whisper/delay 160