
# effect
execute anchored eyes run summon item_display ^ ^ ^ {Tags:[pc.fx.ender_eye.eyes,pc.fx.ender_eye.eyes.mid,"pc.summon"],fall_distance: 0.0d, item: {count: 1, id: "minecraft:ender_eye"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 2.0f, 1.0f], translation: [0.035f, 0.05f, 0.0f]}}
execute anchored eyes unless entity @s[tag=pc.sys.rotate_diagonal] run function pc:object/ender_eye/attack3/eyes/2
execute anchored eyes if entity @s[tag=pc.sys.rotate_diagonal] run function pc:object/ender_eye/attack3/eyes/2b

execute as @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run rotate @s ~ 0
tag @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon

# fx
playsound pc:teleport master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1 1