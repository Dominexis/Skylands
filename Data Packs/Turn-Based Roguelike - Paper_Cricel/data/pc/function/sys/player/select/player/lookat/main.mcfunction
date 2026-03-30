
# effect
    # Selectable Range
execute store result score #slot pc.main run data get entity @s SelectedItemSlot
execute unless score @s pc.selected_slot = #slot pc.main if items entity @s weapon.mainhand paper[custom_data~{pc:{rc:true}}] run function pc:sys/player/select/player/range/use

    # Look
scoreboard players set #temp pc.main 0
execute anchored eyes positioned ^ ^ ^ run function pc:sys/player/select/player/lookat/2