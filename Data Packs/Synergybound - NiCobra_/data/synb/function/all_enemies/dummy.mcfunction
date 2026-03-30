scoreboard players set #money_worth synb.Tmp.Arg 2

summon minecraft:husk ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Dummy",color:"white",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:1000.0d}], \
    equipment: { \
        mainhand:{id:"minecraft:stick",count:1,components:{"minecraft:unbreakable":{},"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:2.0d,operation:"add_value"}]}} \
    } \
}