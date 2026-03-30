scoreboard players set #money_worth synb.Tmp.Arg 2

execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:zombified_piglin ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Raider ",color:"white"},{"text":"lv.1",color:"white"}], \
    attributes:[{id:"minecraft:max_health",base:13.0d},{id:"minecraft:movement_speed",base:0.26d}], \
    equipment: { \
        feet:{id:"minecraft:golden_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:wooden_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:1.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 2 run summon minecraft:zombified_piglin ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Raider ",color:"white"},{"text":"lv.2",color:"yellow"}], \
    attributes:[{id:"minecraft:max_health",base:22.0d},{id:"minecraft:movement_speed",base:0.26d}], \
    equipment: { \
        chest:{id:"minecraft:golden_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:golden_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:stone_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:2.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 3 run summon minecraft:zombified_piglin ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Raider ",color:"white"},{"text":"lv.3",color:"gold"}], \
    attributes:[{id:"minecraft:max_health",base:35.0d},{id:"minecraft:movement_speed",base:0.26d}], \
    equipment: { \
        head:{id:"minecraft:golden_helmet",count:1,components:{"minecraft:unbreakable":{}}}, \
        chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:copper_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:golden_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:golden_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:3.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 4.. run summon minecraft:zombified_piglin ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Raider ",color:"white"},{"text":"lv.4",color:"red"}], \
    attributes:[{id:"minecraft:max_health",base:55.0d},{id:"minecraft:movement_speed",base:0.26d}], \
    equipment: { \
        head:{id:"minecraft:golden_helmet",count:1,components:{"minecraft:unbreakable":{}}}, \
        chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:golden_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:netherite_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:4.0d,operation:"add_value"}]}} \
    } \
}