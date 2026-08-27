scoreboard players set #money_worth synb.Tmp.Arg 4

# Creates shulker bullets

# minecraft:drowned

execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:stray ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Sentinel",color:"gold",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:45.0d},{id:"minecraft:movement_speed",base:0.15d}], \
    equipment: { \
        head:{id:"minecraft:glass",count:1}, \
        chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":2708043}}, \
        legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":2708043}}, \
        feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":2708043}}, \
        mainhand:{id:"minecraft:breeze_rod",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:4.0d,operation:"add_value"},{type:"minecraft:attack_knockback",id:"synb.m:item",amount:6.0d,operation:"add_value"}]}}, \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 2 run summon minecraft:stray ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Sentinel II",color:"red",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:90.0d},{id:"minecraft:movement_speed",base:0.15d}], \
    equipment: { \
        head:{id:"minecraft:spawner",count:1}, \
        chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":2708043}}, \
        legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:breeze_rod",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:5.0d,operation:"add_value"},{type:"minecraft:attack_knockback",id:"synb.m:item",amount:6.0d,operation:"add_value"}]}}, \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 3.. run summon minecraft:stray ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Sentinel III",color:"light_purple",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:200.0d},{id:"minecraft:movement_speed",base:0.15d}], \
    equipment: { \
        head:{id:"minecraft:bedrock",count:1}, \
        chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{}}}, \
        legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:unbreakable":{}}}, \
        feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:unbreakable":{}}}, \
        mainhand:{id:"minecraft:breeze_rod",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:7.0d,operation:"add_value"},{type:"minecraft:attack_knockback",id:"synb.m:item",amount:6.0d,operation:"add_value"}]}}, \
    } \
}