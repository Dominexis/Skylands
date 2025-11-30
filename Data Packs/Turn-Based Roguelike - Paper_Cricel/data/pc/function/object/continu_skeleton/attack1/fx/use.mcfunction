
# effect
summon item_display ~ ~0.5 ~ {Tags:[pc.fx.continu_skeleton.2,pc.fx,"pc.summon"],item: {count: 1, id: "minecraft:arrow"}, transformation: {left_rotation: [0.6459742f, 0.28760624f, -0.28760624f, 0.6459742f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1f, 1f, 1f], translation: [0.0f, 0.0f, 0.0f]},teleport_duration:1}
execute as @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] run rotate @s ~ 0
tag @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] remove pc.summon

# fx
playsound minecraft:entity.skeleton.shoot master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~