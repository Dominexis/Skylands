# SKYLANDS HOOK
function synb:itemengine/player/quit

tag @s remove synb.type.player
tag @s remove synb.attr.core.need_tick
tag @s remove synb.type.dead_player
tag @s remove synb.attr.player_in_arena
tag @s remove synb.ctx.local
tag @s remove synb.status.used_melee
tag @s remove synb.status.charged_melee
tag @s remove synb.status.hurt_no_enemy
tag @s remove synb.arg.push_ref
tag @s remove synb.attr.challenge2_completed
tag @s remove synb.attr.arena2_played
tag @s remove synb.tmp.forbidden_area
tag @s remove synb.attr.arena3_played
tag @s remove synb.ctx.generic_player_src
tag @s remove synb.item.firework.resistance
tag @s remove synb.attr.challenge1_completed
tag @s remove synb.arg.new_player_in_arena
tag @s remove synb.attr.arena1_played
tag @s remove synb.tmp.in_water
tag @s remove synb.tmp.hm_triggered
tag @s remove synb.arg.just_traded
tag @s remove synb.tmp.listener
tag @s remove synb.tmp.sac_target
tag @s remove synb.tmp.kill_src