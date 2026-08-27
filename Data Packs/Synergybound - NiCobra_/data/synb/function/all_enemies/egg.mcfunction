scoreboard players set #money_worth synb.Tmp.Arg 3
# Consider 2 in total wave money because not garanteed

execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:slime ~ ~ ~ {Tags:["synb.arg.new_room_enemy","synb.attr.token"], \
    CustomName:[{"text":"Egg ",color:"white"},{"text":"lv.1",color:"gray"}], \
    Size:0, \
    Silent:1b, \
    active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false}], \
    attributes:[{id:"minecraft:max_health",base:15.0d},{id:"minecraft:scale",base:1.3d}], \
    equipment: { \
        mainhand:{id:"minecraft:glass",count:1,components:{"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:0.0d,operation:"add_value"}]}} \
    } \
}
execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:block_display ~0.15 ~0.5 ~0.15 {CustomName:[{"text":"Egg ",color:"white"},{"text":"lv.1",color:"gray"}],Tags:["synb.type.enemy_associate","synb.attr.parasite_egg_shell","synb.attr.spawn_1"],block_state:{Name:"minecraft:dragon_egg"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[0.7f,0.7f,0.7f]}}
execute if score #enemy_variant synb.Tmp.Arg matches ..1 run summon minecraft:text_display ~ ~0.8 ~ {Tags:["synb.type.enemy_associate","synb.attr.egg_label"],alignment:"center",billboard:"center",view_range:0.017,text:[{"text":""}]}

execute if score #enemy_variant synb.Tmp.Arg matches 2 run summon minecraft:slime ~ ~ ~ {Tags:["synb.arg.new_room_enemy","synb.attr.token"], \
    CustomName:[{"text":"Egg ",color:"white"},{"text":"lv.2",color:"yellow"}], \
    Size:0, \
    Silent:1b, \
    active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false}], \
    attributes:[{id:"minecraft:max_health",base:35.0d},{id:"minecraft:scale",base:1.8d}], \
    equipment: { \
        mainhand:{id:"minecraft:glass",count:1,components:{"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:0.0d,operation:"add_value"}]}} \
    } \
}
execute if score #enemy_variant synb.Tmp.Arg matches 2 run summon minecraft:block_display ~0.05 ~0.5 ~0.05 {Tags:["synb.type.enemy_associate","synb.attr.parasite_egg_shell"],block_state:{Name:"minecraft:dragon_egg"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[0.9f,0.9f,0.9f]}}
execute if score #enemy_variant synb.Tmp.Arg matches 2 run summon minecraft:text_display ~ ~1 ~ {Tags:["synb.type.enemy_associate","synb.attr.egg_label"],alignment:"center",billboard:"center",view_range:0.017,text:[{"text":""}]}

execute if score #enemy_variant synb.Tmp.Arg matches 3.. run summon minecraft:slime ~ ~ ~ {Tags:["synb.arg.new_room_enemy","synb.attr.token"], \
    CustomName:[{"text":"Egg ",color:"white"},{"text":"lv.3",color:"gold"}], \
    Size:0, \
    Silent:1b, \
    active_effects:[{id:"minecraft:invisibility",duration:-1,show_particles:false}], \
    attributes:[{id:"minecraft:max_health",base:60.0d},{id:"minecraft:scale",base:2.3d}], \
    equipment: { \
        mainhand:{id:"minecraft:glass",count:1,components:{"minecraft:attribute_modifiers":[{type:"minecraft:attack_damage",id:"synb.m:item",amount:0.0d,operation:"add_value"}]}} \
    } \
}
execute if score #enemy_variant synb.Tmp.Arg matches 3.. run summon minecraft:block_display ~-0.05 ~0.5 ~-0.05 {Tags:["synb.type.enemy_associate","synb.attr.parasite_egg_shell"],block_state:{Name:"minecraft:dragon_egg"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1.05f,1.05f,1.05f]}}
execute if score #enemy_variant synb.Tmp.Arg matches 3.. run summon minecraft:text_display ~ ~1.2 ~ {Tags:["synb.type.enemy_associate","synb.attr.egg_label"],alignment:"center",billboard:"center",view_range:0.017,text:[{"text":""}]}