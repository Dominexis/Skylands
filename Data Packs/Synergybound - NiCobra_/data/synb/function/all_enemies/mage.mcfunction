scoreboard players set #money_worth synb.Tmp.Arg 12

execute if score #enemy_variant synb.Tmp.Arg matches 10 run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["synb.arg.new_room_enemy", "synb.attr.minions_spawned1"], \
    CustomName:[{"text":"Undead Mage",color:"red",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:600.0d},{id:"minecraft:movement_speed",base:0.21d},{id:"minecraft:knockback_resistance",base:0.8d}], \
    equipment: { \
        head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":0}}, \
        chest:{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":0}}, \
        mainhand:{id:"minecraft:golden_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:4.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 11 run summon minecraft:wither_skeleton ~ ~ ~ {Tags:["synb.arg.new_room_enemy", "synb.attr.extra_bomb"], \
    CustomName:[{"text":"Undead Mage II",color:"light_purple",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:900.0d},{id:"minecraft:movement_speed",base:0.24d},{id:"minecraft:knockback_resistance",base:0.8d}], \
    equipment: { \
        head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":0}}, \
        chest:{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":0}}, \
        mainhand:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:6.0d,operation:"add_value"}]}} \
    } \
}