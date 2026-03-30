
# effect
scoreboard players add @s pc.duration 1

execute unless entity @s[tag=pc.sys.rotate_diagonal] run function pc:object/ender_dragon/attack2/shockwave/generic/main
execute if entity @s[tag=pc.sys.rotate_diagonal] run function pc:object/ender_dragon/attack2/shockwave/diagonal/main
execute if score @s pc.duration matches 20.. run function pc:object/ender_dragon/attack2/shockwave/clear

# fx
execute as @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] facing entity @s eyes run function pc:object/ender_dragon/attack2/shockwave/circle