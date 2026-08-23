
advancement revoke @s only pc:sys/player/tutorial/rc
schedule function pc:sys/combat/tutorial/rc/clear 2t

execute if entity @s[tag=pc.player.tutorial.rc] run return fail
tag @s add pc.player.tutorial.rc

execute if items entity @s weapon.mainhand *[custom_data~{pc:{id:'next_page'}}] run return run function pc:sys/combat/tutorial/rc/next_page
execute if items entity @s weapon.mainhand *[custom_data~{pc:{id:'prev_page'}}] run return run function pc:sys/combat/tutorial/rc/prev_page