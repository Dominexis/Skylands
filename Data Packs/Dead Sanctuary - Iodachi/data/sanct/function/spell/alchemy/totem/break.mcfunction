summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:raw_gold",components:{"minecraft:item_name":"§bBattle Totem","minecraft:custom_data":{totem:{}},"minecraft:lore":[[{keybind:"key.use",color:gray,italic:true}," to place or pick up."],"§7§oWhen placed, §dPlayers§7§o within 5 blocks","§7§oreceive §6Strength§7§o and §5Resistance§7§o."],"minecraft:max_stack_size":99,"minecraft:consumable":{animation:"none",consume_seconds:0,has_consume_particles:false,sound:"minecraft:block.stone.place"},"minecraft:item_model":"minecraft:pufferfish_spawn_egg","minecraft:use_cooldown":{cooldown_group:"sanct:totem",seconds:0.5}}}}

playsound minecraft:entity.elder_guardian.hurt block @a[distance=..16]
particle minecraft:block{block_state:"minecraft:sandstone"} ~ ~0.5 ~ 0.15 0.3 0.15 0 15

execute if entity @s[tag=sanct.require_grass_replace] run function sanct:plot/grass_replace

execute positioned ~ ~1.2 ~ run kill @e[type=minecraft:block_display,tag=sanct.totem_particle,distance=..0.0000001,limit=1]
execute on passengers run kill @s
execute on vehicle run kill @s
kill @s