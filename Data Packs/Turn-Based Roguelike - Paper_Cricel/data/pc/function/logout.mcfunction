## This function runs as and at a player when they log out of the plot

# effect
scoreboard players reset @s pc.player.inlobby
scoreboard players reset @s pc.player.ingame
tag @s remove pc.your_turn
tag @s remove pc.rest_area.player
tag @s remove pc.sys.rotate_diagonal
tag @s remove pc.lobby.character.chose
tag @s remove pc.tutorial.drop_item

attribute @s minecraft:entity_interaction_range modifier remove no_interact

    # TEMP tags
tag @s remove pc.lobby
tag @s remove pc.summon
tag @s remove pc.temp
tag @s remove pc.player
tag @s remove pc.fx.debuff.user
tag @s remove pc.sys.button.user
tag @s remove pc.sys.passive
tag @s remove pc.user
tag @s remove pc.player.now
tag @s remove pc.select.object
tag @s remove pc.your_turn.queue
tag @s remove pc.sys.atker
tag @s remove pc.repair.now
tag @s remove pc.object.repair
tag @s remove pc.object.now
tag @s remove pc.intent.in_range
#tag @s remove pc.damage.$(id)
tag @s remove pc.rest_area
tag @s remove pc.grid.selector
tag @s remove pc.repair_wireless
tag @s remove pc.fx
tag @s remove pc.grid.effect
tag @s remove pc.object.mob
tag @s remove pc.object.ally
tag @s remove pc.sys.looter
tag @s remove pc.start_button
tag @s remove pc.rest_area.tpter
tag @s remove pc.damage.passive_thorn
tag @s remove pc.temp2
tag @s remove pc.ally.teen_repair.used
tag @s remove pc.fx.undying_shell
tag @s remove pc.damage.skill_cactus

#say Logout