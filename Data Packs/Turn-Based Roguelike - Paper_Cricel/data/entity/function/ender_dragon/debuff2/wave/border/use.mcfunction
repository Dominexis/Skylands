
summon minecraft:text_display ~ ~ ~ {Tags:[pc.entity.ender_dragon.debuff2.wave.border,pc.summon], Passengers: [{alignment: "left", background: 0, default_background: 0b, id: "minecraft:text_display", line_width: 200, see_through: 0b, shadow: 0b, transformation: {left_rotation: [0.0f, 0.0f, -0.70710677f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0000012f, 3.0000012f, 3.0000067f], translation: [-0.4f, 2.0f, 0.0f]}}], alignment: "left", background: 0, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, transformation: {left_rotation: [0.70710677f, -0.70710677f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [3.0000002f, 3.0000002f, 3.0000062f], translation: [0.4f, 2.0f, 0.0f]}}

execute as @e[tag=pc.summon,type=text_display,distance=..0.1,limit=1] run function entity:ender_dragon/debuff2/wave/border/2

tag @e[tag=pc.summon,type=text_display,distance=..0.1,limit=1] remove pc.summon