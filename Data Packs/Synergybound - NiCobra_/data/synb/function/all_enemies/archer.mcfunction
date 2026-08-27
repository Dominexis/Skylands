scoreboard players set #money_worth synb.Tmp.Arg 2

# 1 damage
execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:skeleton ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Archer ",color:"white"},{"text":"lv.1",color:"white"}], \
    attributes:[{id:"minecraft:max_health",base:12.0d}], \
    equipment: { \
        head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":11934748}}, \
        feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":11934748}}, \
        mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:custom_data":{player:-1,damage:0.5}}} \
    } \
}

# 1 damage
execute if score #enemy_variant synb.Tmp.Arg matches 2 run summon minecraft:skeleton ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Archer ",color:"white"},{"text":"lv.2",color:"yellow"}], \
    attributes:[{id:"minecraft:max_health",base:20.0d}], \
    equipment: { \
        head:{id:"minecraft:copper_helmet",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":11934748}}, \
        feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":11934748}}, \
        mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:custom_data":{player:-1,damage:0.5}}} \
    } \
}

# 2 damage
execute if score #enemy_variant synb.Tmp.Arg matches 3 run summon minecraft:skeleton ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Archer ",color:"white"},{"text":"lv.3",color:"gold"}], \
    attributes:[{id:"minecraft:max_health",base:32.0d}], \
    equipment: { \
        head:{id:"minecraft:iron_helmet",count:1,components:{"minecraft:unbreakable":{}}}, \
        chest:{id:"minecraft:chainmail_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:iron_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:golden_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:custom_data":{player:-1,damage:1}}} \
    } \
}

# 3 damage
execute if score #enemy_variant synb.Tmp.Arg matches 4.. run summon minecraft:skeleton ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Archer ",color:"white"},{"text":"lv.4",color:"red"}], \
    attributes:[{id:"minecraft:max_health",base:50.0d}], \
    equipment: { \
        head:{id:"minecraft:diamond_helmet",count:1,components:{"minecraft:unbreakable":{}}}, \
        chest:{id:"minecraft:iron_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:custom_data":{player:-1,damage:1.5}}} \
    } \
}