
summon minecraft:text_display ~ ~ ~ {Tags:[pc.fx,pc.skill.taunt,pc.summon], Passengers: [{alignment: "center", background: 0, brightness: {block: 15, sky: 15}, default_background: 0b, id: "minecraft:text_display", line_width: 200, see_through: 0b, shadow: 0b, shadow_strength: 0.0f, text: "◇", transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [15.0f, 15.0f, 0.0f], translation: [-0.175f, -2.05f, 0.0f]}, view_range: 2.0f}], alignment: "center", background: 0, brightness: {block: 15, sky: 15}, default_background: 0b, line_width: 200, see_through: 0b, shadow: 0b, shadow_strength: 0.0f, text: "◇", transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [15.0f, 15.0f, 0.0f], translation: [0.175f, -2.05f, 0.0f]}, view_range: 2.0f}

rotate @e[tag=pc.summon,type=text_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ 0
data merge entity @e[tag=pc.summon,type=text_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] {teleport_duration:2}
execute as @e[tag=pc.summon,type=text_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] on passengers run rotate @s ~ 0
execute as @e[tag=pc.summon,type=text_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] on passengers run data merge entity @s {teleport_duration:2}

tag @e[tag=pc.summon,type=text_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon

# fx
playsound minecraft:entity.shulker.ambient master @a ~ ~1024 ~ 0 1.5 0.75
playsound minecraft:entity.blaze.shoot master @a ~ ~1024 ~ 0 2 1