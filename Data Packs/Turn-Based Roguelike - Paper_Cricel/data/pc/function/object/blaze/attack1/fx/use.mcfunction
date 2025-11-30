
# effect
summon item_display ~ ~1.5 ~ {Tags:[pc.fx,pc.fx.blaze.ball,"pc.summon"],billboard: "center", brightness: {block: 15, sky: 15}, fall_distance: 0.0d, item: {count: 1, id: "minecraft:fire_charge"}, shadow_strength: 0.0f, teleport_duration: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.25f, 0.01f], translation: [0.0f, 0.0f, 0.0f]}, view_range: 2.0f}
rotate @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] ~ 0
tag @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] remove pc.summon