
clear @s *[custom_data~{pc:{sys:{tutorial:1b}}}]

execute unless entity @s[tag=pc.player.tutorial] run return fail
loot replace entity @s container.3 loot pc:sys/option/tutorial/prev_page
loot replace entity @s container.5 loot pc:sys/option/tutorial/next_page
schedule function pc:sys/player/title/tutorial/main 1t