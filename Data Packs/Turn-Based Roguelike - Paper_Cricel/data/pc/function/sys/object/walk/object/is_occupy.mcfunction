
# effect
execute store success score #is_occupy pc.main positioned ~-1.5 ~-100 ~-1.5 as @n[type=marker,tag=pc.grid,dx=2,dy=200,dz=2] if data entity @s data.occupy
execute if score #is_occupy pc.main matches 0 run function pc:sys/object/walk/object/act/walk
execute if score #is_occupy pc.main matches 1 run function pc:sys/object/walk/object/is_unhindered

# fx