
execute as @a[predicate=pc:player/ingame,predicate=sl:player,dx=2,dy=200,dz=2,limit=1] positioned as @s rotated ~ -30 run function pc:sys/player/motion {s:0.5}

execute store result score #can_knockback pc.main positioned ^ ^ ^4 run function pc:sys/object/motion/is_stayable
execute if score #can_knockback pc.main matches 1 as @e[predicate=pc:object/all,type=!player,dx=2,dy=200,dz=2,limit=1] positioned as @s run function pc:sys/object/motion/use