scoreboard players set #money_worth synb.Tmp.Arg 2

execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:husk ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Knight ",color:"white"},{"text":"lv.1",color:"gray"}], \
    attributes:[{id:"minecraft:max_health",base:17.0d}], \
    equipment: { \
        chest:{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:wooden_shovel",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:2.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 2 run summon minecraft:husk ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Knight ",color:"white"},{"text":"lv.2",color:"yellow"}], \
    attributes:[{id:"minecraft:max_health",base:30.0d}], \
    equipment: { \
        chest:{id:"minecraft:copper_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:chainmail_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:iron_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:stone_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:3.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 3 run summon minecraft:husk ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Knight ",color:"white"},{"text":"lv.3",color:"gold"}], \
    attributes:[{id:"minecraft:max_health",base:45.0d}], \
    equipment: { \
        head:{id:"minecraft:golden_helmet",count:1,components:{"minecraft:unbreakable":{}}}, \
        chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:iron_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:4.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 4.. run summon minecraft:husk ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Knight ",color:"white"},{"text":"lv.4",color:"red"}], \
    attributes:[{id:"minecraft:max_health",base:65.0d}], \
    equipment: { \
        head:{id:"minecraft:diamond_helmet",count:1,components:{"minecraft:unbreakable":{}}}, \
        chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:5.0d,operation:"add_value"}]}} \
    } \
}