scoreboard players set #money_worth synb.Tmp.Arg 0

execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:silverfish ~ ~ ~ {Tags:["synb.arg.new_room_enemy","synb.tmp.new"], \
    CustomName:[{"text":"Parasite",color:"gray"}], \
    attributes:[ \
        {id:"minecraft:max_health",base:30.0d},{id:"minecraft:scale",base:1.2},{id:"minecraft:movement_speed",base:0.31d} \
    ], \
    equipment: { \
        mainhand:{id:"minecraft:glass",count:1,components:{"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:2.0d,operation:"add_value"}]}} \
    } \
}