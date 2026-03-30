
# effect
tag @s add pc.sys.button.owner
execute on target run tag @s add pc.sys.button.user
execute on attacker run tag @s add pc.sys.button.user

function pc:sys/utils/button/2 with entity @s data
tag @p[predicate=sl:player,tag=pc.sys.button.user,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.sys.button.user

    # Reset
data remove entity @s interaction
data remove entity @s attack
tag @s remove pc.sys.button.owner