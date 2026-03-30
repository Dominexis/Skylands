
# Undead stats and ritual spell data
data modify storage sanct:storage root set value {  summon:  {  zombie:  {stat:{more_zombie_health:0f,danger_max_health:100s,danger_movement_speed:100s,danger_attack_damage:100s}},  skeleton:  {stat:{more_skeleton_health:0f,danger_max_health:100s,danger_movement_speed:100s,danger_attack_damage:100s}},  vampire:  {bat_count:3b,arrow:{damage:15f},stat:{more_vampire_health:0f,danger_max_health:100s,danger_movement_speed:100s,danger_attack_damage:100s}}},  experience:  {pitch:0.9f},  ritual:  {  basic_speed  :{title_book:["§2§lSKY SPIRITS IV","§2§lSKY SPIRITS III","§2§lSKY SPIRITS II","§2§lSKY SPIRITS I"],price:[I;4,3,2,1],speed_next:10},  more_bone  :{title_book:["§7§lWAR IDOL IV","§7§lWAR IDOL III","§7§lWAR IDOL II","§7§lWAR IDOL I"],price:[I;6,5,3,2],count_next:1},  more_flesh  :{title_book:["§7§lFAMINE IDOL IV","§7§lFAMINE IDOL III","§7§lFAMINE IDOL II","§7§lFAMINE IDOL I"],price:[I;4,3,2,1],count_next:1,chance_next:[I;100,75,50]},  more_skeleton  :{title_book:["§7§lRITE OF BONE IV","§7§lRITE OF BONE III","§7§lRITE OF BONE II","§7§lRITE OF BONE I"],price:[I;3,2,2,1],count_scale:[8,5,3,2],health_decrease_next:12},  more_vampire  :{title_book:["§4§lRITE OF BLOOD IV","§4§lRITE OF BLOOD III","§4§lRITE OF BLOOD II","§4§lRITE OF BLOOD I"],count_scale:[8,4,3,2],health_decrease_next:15},  more_zombie  :{title_book:["§2§lRITE OF FLESH IV","§2§lRITE OF FLESH III","§2§lRITE OF FLESH II","§2§lRITE OF FLESH I"],price:[I;3,3,2,1],count_scale:[16,12,8,6],health_decrease_next:10},  spring_health  :{title_book:["§2§lNATURE SPIRITS IV","§2§lNATURE SPIRITS III","§2§lNATURE SPIRITS II","§2§lNATURE SPIRITS I"],price:[I;7,5,3,2],count:[I;7,5,3,2],description:["frequently §a-> constantly","regularly §a-> frequently","occasionally §a-> regularly","§aoccasionally"]},  zombie_armor  :{title_book:["§2§lRITE OF METAL IV","§2§lRITE OF METAL III","§2§lRITE OF METAL II","§2§lRITE OF METAL I"],price:[I;14,9,6,3],description:["iron §a-> diamond","chainmail §a-> iron","leather §a-> chainmail","§aleather"]}  }}

# Area effect cloud that gives respawning players satus effects
summon minecraft:area_effect_cloud -2310 7 2307 {custom_particle:{type:"minecraft:ash"},Radius:.5f,Duration:32767,Age:-32768,WaitTime:-32768,potion_contents:{custom_effects:[{id:"minecraft:invisibility",amplifier:0,duration:25,show_particles:0b},{id:"minecraft:blindness",amplifier:0,duration:30,show_particles:0b}]}}

# Cloud in a bottle barrier entities
summon minecraft:area_effect_cloud -2317.5 84.0 2309.5 {Radius:0f,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["sanct.cloud_barrier"],Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["sanct.cloud_barrier"],Size:1,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:0.0000001}],equipment:{mainhand:{id:"minecraft:slime_ball",components:{"minecraft:weapon":{disable_blocking_for_seconds:5}}}}}]}
summon minecraft:area_effect_cloud -2316.9 83.9 2310.0 {Radius:0f,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["sanct.cloud_barrier"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["sanct.cloud_barrier"],NoAI:1b,Color:10b,DeathLootTable:""}]}
summon minecraft:area_effect_cloud -2318.1 83.9 2310.0 {Radius:0,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Tags:["sanct.cloud_barrier"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,Tags:["sanct.cloud_barrier"],NoAI:1b,Color:10b,DeathLootTable:""}]}

# Start slow clocks
schedule function sanct:plot/tick_slow 10
schedule function sanct:plot/error_correct 300

function sanct:plot/on/add_scoreboards
function sanct:plot/on/add_teams
function sanct:plot/on/summon_spawners
function sanct:plot/on/summon_item_pickups
function sanct:plot/on/summon_furniture

# Activate advancements
scoreboard players set #sanct_active sanct.numbers 1