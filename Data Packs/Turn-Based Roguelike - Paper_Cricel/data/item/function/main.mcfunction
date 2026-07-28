
execute as @e[tag=pc.head.gold_greed,type=marker] at @s run function item:head/gold_greed/fx/main
execute as @e[tag=pc.legs.iron_resolve.active,type=marker] at @s run function item:legs/iron_resolve/fx_active/main

execute as @e[tag=pc.skill.deterrence,type=marker] at @s run function item:skill/warrior/deterrence/fx/main
execute as @e[tag=pc.skill.blazing_meteorite,type=item_display] at @s run function item:skill/warrior/blazing_meteorite/fx/main
execute as @e[tag=pc.skill.cactus,type=minecraft:item_display] at @s run function item:skill/warrior/cactus/fx/main
execute as @e[tag=pc.skill.borrowed_time,type=minecraft:marker] at @s run function item:skill/warrior/borrowed_time/fx/main
execute as @e[tag=pc.skill.engulfed_pain,type=marker] at @s run function item:skill/warrior/engulfed_pain/fx/main
execute as @e[tag=pc.skill.taunt,type=text_display] at @s run function item:skill/warrior/taunt/fx/main
execute as @e[tag=pc.skill.repair_jade,type=item_display] at @s run function item:skill/warrior/repair_jade/fx/main

execute as @e[tag=pc.skill.yama_double,type=marker] at @s run function item:skill/warrior/yama_double/fx/main
execute as @e[tag=pc.skill.yama_double.flame,type=silverfish] at @s run function item:skill/warrior/yama_double/fx/flame/main
execute as @e[tag=pc.skill.yama_double.new_turn,type=marker] at @s run function item:skill/warrior/yama_double/new_turn/fx/main
execute as @e[tag=pc.skill.yama_double.new_turn.per,type=text_display] at @s run function item:skill/warrior/yama_double/new_turn/fx/per/main