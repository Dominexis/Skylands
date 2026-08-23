
advancement revoke @s only pc:sys/utils/button/left_click

tag @s add pc.utils.button.clicker
execute as @e[team=pc.utils.button,type=interaction,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] if function pc:sys/utils/button/left_click/is_clicker at @s run function pc:sys/utils/button/left_click/interpret with entity @s data
tag @s remove pc.utils.button.clicker