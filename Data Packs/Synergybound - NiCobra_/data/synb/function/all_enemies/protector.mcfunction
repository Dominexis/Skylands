scoreboard players set #money_worth synb.Tmp.Arg 3

execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:endermite ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Protector",color:"dark_purple",bold:true}], \
    attributes:[ \
        {id:"minecraft:max_health",base:27.0d},{id:"minecraft:movement_speed",base:0.28d} \
    ], \
    equipment: { \
        mainhand:{id:"minecraft:glass",count:1,components:{"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:1.0d,operation:"add_value"}]}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 2.. run summon minecraft:endermite ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Protector II",color:"light_purple",bold:true}], \
    attributes:[ \
        {id:"minecraft:max_health",base:60.0d},{id:"minecraft:movement_speed",base:0.28d},{id:"minecraft:scale",base:1.35} \
    ], \
    equipment: { \
        mainhand:{id:"minecraft:glass",count:1,components:{"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:2.0d,operation:"add_value"}]}} \
    } \
}