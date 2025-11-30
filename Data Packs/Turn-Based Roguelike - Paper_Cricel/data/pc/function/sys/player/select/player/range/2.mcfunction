
# effect
    # Reset
scoreboard players operation @s pc.selected_slot = #slot pc.main
execute as @e[type=marker,tag=pc.grid,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/state/reset_data

    # Range
$execute as @n[predicate=pc:object/ally_player,type=!player,tag=pc.player.now,distance=..100] at @s run function pc:item/$(category)/$(item)/range

    # Display
execute as @e[type=marker,tag=pc.grid,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/grid/state/color