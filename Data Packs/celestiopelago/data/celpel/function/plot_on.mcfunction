# Runs when the first player joins the plot

# Creates all scoreboards
scoreboard objectives add celpel.blackhole_particles dummy
scoreboard objectives add celpel.blow_played dummy
scoreboard objectives add celpel.boots_distributed dummy
scoreboard objectives add celpel.boots_requested dummy
scoreboard objectives add celpel.bow_shot minecraft.used:minecraft.bow
scoreboard objectives add celpel.bulb_1 dummy
scoreboard objectives add celpel.bulb_2 dummy
scoreboard objectives add celpel.bulb_3 dummy
scoreboard objectives add celpel.bulbs_lit dummy
scoreboard objectives add celpel.door_opened dummy
scoreboard objectives add celpel.end_reached dummy
scoreboard objectives add celpel.fan_active dummy
scoreboard objectives add celpel.lever_bridge dummy
scoreboard objectives add celpel.lever_telepad dummy
scoreboard objectives add celpel.lever_pulley dummy
scoreboard objectives add celpel.levers_active dummy
scoreboard objectives add celpel.pillar_intro dummy
scoreboard objectives add celpel.pillar_upper dummy
scoreboard objectives add celpel.pillar_lower dummy
scoreboard objectives add celpel.pillar_trio dummy
scoreboard objectives add celpel.pillar_roof dummy
scoreboard objectives add celpel.pillars_completed dummy
scoreboard objectives add celpel.recovering_effects dummy
scoreboard objectives add celpel.requesting_particles dummy
scoreboard objectives add celpel.string_active dummy
scoreboard objectives add celpel.string_timer dummy
scoreboard objectives add celpel.targets_shot dummy
scoreboard objectives add celpel.vaporizing_particles dummy
scoreboard objectives add celpel.wires_placed dummy

# Sets the scoreboards of the first players to the correct values
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.blackhole_particles 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.blow_played 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.boots_distributed 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.boots_requested 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.bow_shot 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.bulb_1 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.bulb_2 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.bulb_3 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.bulbs_lit 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.door_opened 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.end_reached 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.fan_active 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.lever_bridge 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.lever_telepad 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.lever_pulley 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.levers_active 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_intro 1
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_upper 1
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_lower 1
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_trio 1
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillar_roof 1
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.pillars_completed 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.recovering_effects 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.requesting_particles 0
# string_active is deliberately omitted, as it will be set later in this function
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.string_timer 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.targets_shot 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.vaporizing_particles 0
scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.wires_placed 0

# Starts the map
function celpel:strings/trigger/1