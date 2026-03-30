
# effect
function pc:sys/object/rotate/is_diagonal
execute unless entity @s[tag=pc.sys.rotate_diagonal] run tp @s ^ ^0.25 ^0.3361445
execute if entity @s[tag=pc.sys.rotate_diagonal] run tp @s ^ ^0.25 ^0.475308323
data modify entity @e[type=item,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] Motion set from entity @s Pos
kill @s