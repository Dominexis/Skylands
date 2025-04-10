# Create scoreboard objectives

scoreboard objectives add sl.value dummy
scoreboard objectives add sl.ticks dummy
scoreboard objectives add sl.id dummy

scoreboard objectives add sl.plot dummy
scoreboard objectives add sl.fade_plot dummy
scoreboard objectives add sl.fade_timer dummy

scoreboard objectives add sl.death deathCount

scoreboard objectives add sl.night_vision dummy

scoreboard objectives add sl.uuid_0 dummy
scoreboard objectives add sl.uuid_1 dummy
scoreboard objectives add sl.uuid_2 dummy
scoreboard objectives add sl.uuid_3 dummy

scoreboard objectives add sl.checkpoint_x dummy
scoreboard objectives add sl.checkpoint_y dummy
scoreboard objectives add sl.checkpoint_z dummy
scoreboard objectives add sl.checkpoint_yaw dummy
scoreboard objectives add sl.checkpoint_pitch dummy

scoreboard objectives add sl.timer dummy
scoreboard objectives add sl.collection_timer dummy

scoreboard objectives add lobby trigger
scoreboard objectives add play trigger
scoreboard objectives add spectate trigger
scoreboard objectives add checkpoint trigger
scoreboard objectives add night_vision trigger
scoreboard objectives add plot trigger



# Set constants

scoreboard players set #1 sl.value 1
scoreboard players set #10 sl.value 10
scoreboard players set #100 sl.value 100
scoreboard players set #1000 sl.value 1000
scoreboard players set #10000 sl.value 10000
scoreboard players set #100000 sl.value 100000
scoreboard players set #1000000 sl.value 1000000
scoreboard players set #10000000 sl.value 10000000
scoreboard players set #100000000 sl.value 100000000
scoreboard players set #1000000000 sl.value 1000000000

scoreboard players set #2 sl.value 2
scoreboard players set #4 sl.value 4
scoreboard players set #8 sl.value 8
scoreboard players set #16 sl.value 16
scoreboard players set #32 sl.value 32
scoreboard players set #64 sl.value 64
scoreboard players set #128 sl.value 128
scoreboard players set #256 sl.value 256
scoreboard players set #512 sl.value 512
scoreboard players set #1024 sl.value 1024
scoreboard players set #2048 sl.value 2048
scoreboard players set #4096 sl.value 4096
scoreboard players set #8192 sl.value 8192
scoreboard players set #16384 sl.value 16384
scoreboard players set #32768 sl.value 32768
scoreboard players set #65536 sl.value 65536
scoreboard players set #131072 sl.value 131072
scoreboard players set #262144 sl.value 262144
scoreboard players set #524288 sl.value 524288
scoreboard players set #1048576 sl.value 1048576
scoreboard players set #2097152 sl.value 2097152
scoreboard players set #4194304 sl.value 4194304
scoreboard players set #8388608 sl.value 8388608
scoreboard players set #16777216 sl.value 16777216
scoreboard players set #33554432 sl.value 33554432
scoreboard players set #67108864 sl.value 67108864
scoreboard players set #134217728 sl.value 134217728
scoreboard players set #268435456 sl.value 268435456
scoreboard players set #536870912 sl.value 536870912
scoreboard players set #1073741824 sl.value 1073741824
scoreboard players set #-2147483648 sl.value -2147483648

scoreboard players set #-1 sl.value -1
scoreboard players set #3 sl.value 3
scoreboard players set #5 sl.value 5
scoreboard players set #6 sl.value 6
scoreboard players set #7 sl.value 7
scoreboard players set #9 sl.value 9
scoreboard players set #15 sl.value 15
scoreboard players set #20 sl.value 20
scoreboard players set #25 sl.value 25
scoreboard players set #30 sl.value 30
scoreboard players set #40 sl.value 40
scoreboard players set #45 sl.value 45
scoreboard players set #50 sl.value 50
scoreboard players set #60 sl.value 60
scoreboard players set #90 sl.value 90
scoreboard players set #96 sl.value 96
scoreboard players set #180 sl.value 180
scoreboard players set #360 sl.value 360
scoreboard players set #250 sl.value 250
scoreboard players set #500 sl.value 500
scoreboard players set #720 sl.value 720
scoreboard players set #900 sl.value 900
scoreboard players set #1570 sl.value 1570
scoreboard players set #1800 sl.value 1800
scoreboard players set #2000 sl.value 2000
scoreboard players set #2500 sl.value 2500
scoreboard players set #3141 sl.value 3141
scoreboard players set #3600 sl.value 3600
scoreboard players set #4000 sl.value 4000
scoreboard players set #5040 sl.value 5040
scoreboard players set #6283 sl.value 6283



# Initialize world border timer
scoreboard players add #world_border_reset_timer sl.value 0
scoreboard players add #time sl.value 0

execute store result score #world_border_diameter sl.value run worldborder get
scoreboard players operation #previous_world_border_diameter sl.value = #world_border_diameter sl.value



# Initialize mode flags
scoreboard players add #dev_mode sl.value 0
scoreboard players add #debug_mode sl.value 0



# Initialize weighty plot counts
scoreboard players add #heavy_plot_count sl.value 0
scoreboard players add #medium_plot_count sl.value 0

scoreboard players set #max_heavy_plots sl.value 1
scoreboard players set #max_medium_plots sl.value 10



# Initialize generated plot data
function sl:generated/initialize_data



# Set lobby plot ID
scoreboard players set #lobby_plot sl.value 0



# Add teams

team add sl.player
team modify sl.player displayName {"text":"Player","color":"green"}
team modify sl.player color green
team modify sl.player friendlyFire false
team modify sl.player collisionRule pushOwnTeam
team modify sl.player seeFriendlyInvisibles false

team add sl.player_pvp
team modify sl.player_pvp displayName {"text":"Player","color":"green"}
team modify sl.player_pvp color green
team modify sl.player_pvp friendlyFire true
team modify sl.player_pvp collisionRule always
team modify sl.player_pvp seeFriendlyInvisibles false

team add sl.queue
team modify sl.queue displayName {"text":"Queue","color":"green"}
team modify sl.queue color green
team modify sl.queue friendlyFire false
team modify sl.queue collisionRule never
team modify sl.queue seeFriendlyInvisibles false

team add sl.spectator
team modify sl.spectator displayName {"text":"Spectator","color":"gray"}
team modify sl.spectator color gray
team modify sl.spectator friendlyFire false
team modify sl.spectator collisionRule never
team modify sl.spectator seeFriendlyInvisibles false

team add sl.no_collision
team modify sl.no_collision collisionRule never
team modify sl.no_collision seeFriendlyInvisibles false



# Set gamerules
defaultgamemode adventure

gamerule announceAdvancements false
gamerule blockExplosionDropDecay false
gamerule commandBlockOutput false
gamerule commandModificationBlockLimit 2147483647
gamerule disableElytraMovementCheck true
gamerule disablePlayerMovementCheck true
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops true
gamerule doFireTick false
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule doLimitedCrafting false
gamerule doMobLoot true
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops true
gamerule doTraderSpawning false
gamerule doVinesSpread false
gamerule doWeatherCycle false
gamerule doWardenSpawning false
gamerule drowningDamage true
gamerule enderPearlsVanishOnDeath true
gamerule fallDamage true
gamerule fireDamage true
gamerule forgiveDeadPlayers true
gamerule freezeDamage true
gamerule globalSoundEvents false
gamerule keepInventory true
gamerule lavaSourceConversion false
gamerule logAdminCommands true
gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647
gamerule maxEntityCramming 2147483647
gamerule mobExplosionDropDecay true
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule playersNetherPortalCreativeDelay 2147483647
gamerule playersNetherPortalDefaultDelay 2147483647
gamerule playersSleepingPercentage 100
gamerule projectilesCanBreakBlocks true
gamerule randomTickSpeed 0
gamerule reducedDebugInfo false
gamerule showDeathMessages false
gamerule snowAccumulationHeight 1
gamerule spawnChunkRadius 8
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks true
gamerule tntExplosionDropDecay true
gamerule universalAnger true
gamerule waterSourceConversion true



# Initialize storage
data modify storage sl:data tag set value {}
data modify storage sl:data macro set value {}