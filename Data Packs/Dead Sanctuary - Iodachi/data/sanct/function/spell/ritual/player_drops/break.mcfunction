playsound minecraft:block.sculk_catalyst.break block @a[distance=..16]
$execute unless entity @s[tag=sanct.flesh0] run summon minecraft:item ~ ~ ~ {Age:-32768,Motion:[0.05,0.2,0.05],Item:{id:"minecraft:rotten_flesh",count:$(flesh),components:{"minecraft:item_name":"Rotten Flesh","minecraft:max_stack_size":99}}}
$execute unless entity @s[tag=sanct.bone0] run summon minecraft:item ~ ~ ~ {Age:-32768,Motion:[-0.08,0.2,0],Item:{id:"minecraft:bone",count:$(bone),components:{"minecraft:item_name":"Bone","minecraft:max_stack_size":99}}}
$execute unless entity @s[tag=sanct.blood0] run summon minecraft:item ~ ~ ~ {Age:-32768,Motion:[0,0.2,-0.08],Item:{id:"minecraft:fermented_spider_eye",count:$(blood),components:{"minecraft:item_name":"Blood","minecraft:max_stack_size":99}}}

execute if entity @s[tag=sanct.require_grass_replace] run function sanct:plot/grass_replace

execute on passengers run kill @s
execute on vehicle run kill @s
kill @s