scoreboard players set #money_worth synb.Tmp.Arg 4

execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:vindicator ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Runner",color:"gold",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:40.0d},{id:"minecraft:movement_speed",base:0.29d},{id:"minecraft:knockback_resistance",base:0.8d},{id:"minecraft:step_height",base:1.5d},{id:"minecraft:follow_range",base:100.0d}], \
    equipment: { \
        mainhand:{id:"minecraft:copper_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:3.0d,operation:"add_value"}],"minecraft:item_model":"minecraft:copper_axe"}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 2 run summon minecraft:vindicator ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Runner II",color:"red",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:90.0d},{id:"minecraft:movement_speed",base:0.3d},{id:"minecraft:knockback_resistance",base:0.8d},{id:"minecraft:step_height",base:1.5d}], \
    equipment: { \
        mainhand:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:4.0d,operation:"add_value"}],"minecraft:item_model":"minecraft:diamond_axe"}} \
    } \
}

execute if score #enemy_variant synb.Tmp.Arg matches 3.. run summon minecraft:vindicator ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Runner III",color:"light_purple",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:220.0d},{id:"minecraft:movement_speed",base:0.3d},{id:"minecraft:knockback_resistance",base:0.8d},{id:"minecraft:step_height",base:1.5d}], \
    equipment: { \
        mainhand:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:6.0d,operation:"add_value"}],"minecraft:item_model":"minecraft:netherite_axe"}} \
    } \
}