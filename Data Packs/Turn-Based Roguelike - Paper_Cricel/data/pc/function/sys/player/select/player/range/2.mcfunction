
# effect
# Reset
scoreboard players operation @s pc.selected_slot = #slot pc.main
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid] at @s run function pc:sys/grid/state/reset_data

# Range
$execute as @n[type=!minecraft:player,distance=..100,tag=pc.player.now,predicate=pc:object/ally_player] at @s run function pc:item/$(category)/$(item)/range

# Display
execute as @e[type=minecraft:marker,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.grid] at @s run function pc:sys/grid/state/color