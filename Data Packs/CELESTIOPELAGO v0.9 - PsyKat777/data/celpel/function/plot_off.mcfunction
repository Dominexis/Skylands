# Runs when the last player leaves the plot
scoreboard objectives remove celpel.blackhole_particles
scoreboard objectives remove celpel.blow_played
scoreboard objectives remove celpel.boots_distributed
scoreboard objectives remove celpel.boots_requested
scoreboard objectives remove celpel.bow_shot
scoreboard objectives remove celpel.bulb_1
scoreboard objectives remove celpel.bulb_2
scoreboard objectives remove celpel.bulb_3
scoreboard objectives remove celpel.bulbs_lit
scoreboard objectives remove celpel.door_opened
scoreboard objectives remove celpel.end_reached
scoreboard objectives remove celpel.fan_active
scoreboard objectives remove celpel.lever_bridge
scoreboard objectives remove celpel.lever_telepad
scoreboard objectives remove celpel.lever_pulley
scoreboard objectives remove celpel.levers_active
scoreboard objectives remove celpel.pillar_intro
scoreboard objectives remove celpel.pillar_upper
scoreboard objectives remove celpel.pillar_lower
scoreboard objectives remove celpel.pillar_trio
scoreboard objectives remove celpel.pillar_roof
scoreboard objectives remove celpel.pillars_completed
scoreboard objectives remove celpel.recovering_effects
scoreboard objectives remove celpel.requesting_particles
scoreboard objectives remove celpel.string_active
scoreboard objectives remove celpel.string_timer
scoreboard objectives remove celpel.targets_shot
scoreboard objectives remove celpel.vaporizing_particles
scoreboard objectives remove celpel.wires_placed

schedule clear celpel:components/blow_1
schedule clear celpel:components/blow_2
schedule clear celpel:components/blow_3
schedule clear celpel:components/chest_slide_1
schedule clear celpel:components/chest_slide_2
schedule clear celpel:components/door_1
schedule clear celpel:components/door_2
schedule clear celpel:components/door_3
schedule clear celpel:pillars/ding
schedule clear celpel:pillars/gate_2
schedule clear celpel:pillars/gate_3
schedule clear celpel:repeaters/first_gate_2
schedule clear celpel:repeaters/first_gate_3
schedule clear celpel:repeaters/second_gate_2
schedule clear celpel:strings/one_liners/1
schedule clear celpel:strings/one_liners/2
schedule clear celpel:strings/one_liners/3
schedule clear celpel:strings/one_liners/4
schedule clear celpel:targets/allow_access
schedule clear celpel:targets/ladder_2
schedule clear celpel:telepads/effects
schedule clear celpel:vaporizing/vaporize_2
schedule clear celpel:vaporizing/vaporize_3
schedule clear celpel:vaporizing/vaporize_4
schedule clear celpel:vaporizing/vaporize_5

function celpel:reset