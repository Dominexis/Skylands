scoreboard players set #money_worth synb.Tmp.Arg 0

execute store result score #rand synb.Tmp.Expr run random value 1..2 synb.r:misc_rng

execute if score #rand synb.Tmp.Expr matches 1 run summon minecraft:skeleton ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Acolyte",color:"gray"}], \
    attributes:[{id:"minecraft:max_health",base:40.0d},{id:"minecraft:scale",base:0.8d}], \
    equipment: { \
        head:{id:"minecraft:chainmail_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":3289650}}, \
        mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:custom_data":{player:-1,damage:1.0}}} \
    } \
}

execute if score #rand synb.Tmp.Expr matches 2 run summon minecraft:skeleton ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Acolyte",color:"gray"}], \
    attributes:[{id:"minecraft:max_health",base:40.0d},{id:"minecraft:scale",base:0.8d},{id:"minecraft:movement_speed",base:0.28d}], \
    equipment: { \
        head:{id:"minecraft:chainmail_helmet",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":3289650}}, \
        mainhand:{id:"minecraft:iron_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:3.0d,operation:"add_value"}]}} \
    } \
}