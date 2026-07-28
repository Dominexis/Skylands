
advancement revoke @s only sys:utils/button/right_click

tag @s add pc.utils.button.clicker
execute as @e[team=pc.utils.button,type=interaction] if function sys:utils/button/right_click/is_clicker at @s run function sys:utils/button/right_click/interpret with entity @s data
tag @s remove pc.utils.button.clicker