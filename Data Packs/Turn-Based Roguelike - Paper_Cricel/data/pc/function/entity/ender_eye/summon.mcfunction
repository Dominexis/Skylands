
summon minecraft:item_display ~ ~2 ~ {Tags: [pc.entity.ender_eye, pc.summon], item: {count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.5f], translation: [0.03f, -0.725f, 0.0f]}, teleport_duration: 6, Passengers: [\
    {Tags: [pc.entity.ender_eye.wing, pc.entity.ender_eye.wing1, pc.entity.same_rot], id: "minecraft:item_display", item: {count: 1, id: "minecraft:feather"}, teleport_duration: 6, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 0.25f], translation: [-0.55f, -0.4625f, 0.0f]}},\
    {Tags: [pc.entity.ender_eye.wing, pc.entity.ender_eye.wing2, pc.entity.same_rot], id: "minecraft:item_display", item: {count: 1, id: "minecraft:feather"}, teleport_duration: 6, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 0.25f], translation: [0.55f, -0.4625f, 0.0f]}}\
]}

data modify storage pc:temp summon set value {id:"ender_eye",team:"enemy",hpmax:230}
execute as @e[tag=pc.summon,type=minecraft:item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon

## Skills
# attack1 - line(9×3) | 5 damage, 0 | 1 Strength
# attack2 - 7x7 | 2x2 damage, 0 | 18 Shield

# summon1 - nearest(2, ally) | walk, any-cross | summon Black Hole 4 HP
# summon2 - furthest(any-cross) | walk, line(9) | summon Black Hole 8 HP
# (Black Hole : any-cross | 8 damage)

# debuff1 - anyd-cross | 3 Void Area
# (Void Area : This block becomes a Hole. Units lose 999 Strength this turn.)

## Intents
# every 1, 4, ... turn : debuff1
# every 2, 5, ... turn : attack1, attack2
# every 3, 6, ... turn : summon1, summon2