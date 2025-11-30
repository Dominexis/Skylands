
# effect
# Selectable Range
execute store result score #slot pc.main run data get entity @s SelectedItemSlot
execute unless score @s pc.selected_slot = #slot pc.main if items entity @s weapon.mainhand minecraft:paper[minecraft:custom_data~{pc:{rc:1b}}] run function pc:sys/player/select/player/range/use

# Look
scoreboard players set #temp pc.main 0
execute anchored eyes positioned ^ ^ ^ run function pc:sys/player/select/player/lookat/2