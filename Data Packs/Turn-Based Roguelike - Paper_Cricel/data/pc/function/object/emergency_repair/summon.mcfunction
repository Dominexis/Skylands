
# effect
summon item_display ~ ~1.1 ~ {Tags:["pc.summon","pc.object.repair","pc.object.ally"],Passengers: [{id: "minecraft:item_display", item: {count: 1, id: "minecraft:polished_blackstone_slab"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.4375f, 0.5f], translation: [0.3125f, 0.1875f, -0.0625f]}}, {id: "minecraft:item_display", item: {count: 1, id: "minecraft:redstone_block"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.3125f, 0.3125f, 0.3125f], translation: [0.3125f, 0.125f, -0.0625f]}}], item: {count: 1, id: "minecraft:anvil"}, transformation: {left_rotation: [0.0f, 0.70710677f, 0.0f, 0.70710677f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1f, 1f, 1f], translation: [0.0f, -0.5f, 0.0f]},Rotation:[-180f,0f]}

    # init
data modify storage pc:temp summon set value {id:'emergency_repair',hp:40,hpmax:40}
execute as @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] at @s run function pc:sys/object/summon/use

# fx
playsound minecraft:block.anvil.use master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2