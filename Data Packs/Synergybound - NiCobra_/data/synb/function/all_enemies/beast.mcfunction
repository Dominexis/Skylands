scoreboard players set #money_worth synb.Tmp.Arg 6

summon minecraft:zoglin ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Beast",color:"gold",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:170.0d},{id:"minecraft:movement_speed",base:0.35d}], \
    equipment: { \
        mainhand:{id:"minecraft:glass",count:1,components:{"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:3.0d,operation:"add_value"}]}} \
    } \
}