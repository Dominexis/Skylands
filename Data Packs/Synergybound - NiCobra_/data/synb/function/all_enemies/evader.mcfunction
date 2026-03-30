scoreboard players set #money_worth synb.Tmp.Arg 4

# 4 damage
summon minecraft:pillager ~ ~ ~ {Tags:["synb.arg.new_room_enemy"], \
    CustomName:[{"text":"Evader",color:"gold",bold:true}], \
    attributes:[{id:"minecraft:max_health",base:85.0d},{id:"minecraft:follow_range",base:100.0d}], \
    equipment: { \
        mainhand:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{player:-1,damage:2}}} \
    } \
}