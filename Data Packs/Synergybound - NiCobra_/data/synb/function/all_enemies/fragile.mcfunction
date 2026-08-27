scoreboard players set #money_worth synb.Tmp.Arg 1

execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:bogged ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Fragile ",color:"white"},{"text":"lv.1",color:"gray"}], \
    attributes:[{id:"minecraft:max_health",base:5.0d},{id:"minecraft:movement_speed",base:0.28d}], \
    equipment: { \
        head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":3289650}}, \
        mainhand:{id:"minecraft:wooden_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:1.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 2 run summon minecraft:bogged ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Fragile ",color:"white"},{"text":"lv.2",color:"yellow"}], \
    attributes:[{id:"minecraft:max_health",base:8.0d},{id:"minecraft:movement_speed",base:0.28d}], \
    equipment: { \
        head:{id:"minecraft:iron_helmet",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:chainmail_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:stone_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:1.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 3 run summon minecraft:bogged ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Fragile ",color:"white"},{"text":"lv.3",color:"gold"}], \
    attributes:[{id:"minecraft:max_health",base:14.0d},{id:"minecraft:movement_speed",base:0.28d}], \
    equipment: { \
        head:{id:"minecraft:diamond_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":3289650}}, \
        feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":3289650}}, \
        mainhand:{id:"minecraft:copper_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:2.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 4.. run summon minecraft:bogged ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Fragile ",color:"white"},{"text":"lv.4",color:"red"}], \
    attributes:[{id:"minecraft:max_health",base:21.0d},{id:"minecraft:movement_speed",base:0.28d}], \
    equipment: { \
        head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:iron_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:3.0d,operation:"add_value"}]}} \
    } \
}