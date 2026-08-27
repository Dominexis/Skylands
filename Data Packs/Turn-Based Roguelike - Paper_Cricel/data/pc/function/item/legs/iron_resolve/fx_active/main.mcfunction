
scoreboard players add @s pc.duration 1

execute if score @s pc.duration matches 0..20 as @a[predicate=sl:player,distance=..30] facing entity @s eyes run function pc:item/legs/iron_resolve/fx_active/0

execute if score @s pc.duration matches 21 as @a[predicate=sl:player,distance=..30] facing entity @s eyes run function pc:item/legs/iron_resolve/fx_active/1
execute if score @s pc.duration matches 22 as @a[predicate=sl:player,distance=..30] facing entity @s eyes run function pc:item/legs/iron_resolve/fx_active/2
execute if score @s pc.duration matches 23 as @a[predicate=sl:player,distance=..30] facing entity @s eyes run function pc:item/legs/iron_resolve/fx_active/3
execute if score @s pc.duration matches 23 run playsound minecraft:block.note_block.basedrum master @a ~ ~1024 ~ 0 0 1
execute if score @s pc.duration matches 24 as @a[predicate=sl:player,distance=..30] facing entity @s eyes run function pc:item/legs/iron_resolve/fx_active/2
execute if score @s pc.duration matches 25 as @a[predicate=sl:player,distance=..30] facing entity @s eyes run function pc:item/legs/iron_resolve/fx_active/1

execute if score @s pc.duration matches 25.. run scoreboard players set @s pc.duration -1