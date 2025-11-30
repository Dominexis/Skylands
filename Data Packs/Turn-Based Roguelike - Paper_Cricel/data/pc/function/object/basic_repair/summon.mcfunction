
# effect
summon item_display ~ ~1.1 ~ {Tags:["pc.summon","pc.object.repair","pc.object.ally"],item: {count: 1, id: "minecraft:anvil"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, -0.5f, 0.0f]},Rotation:[-180f,0f]}

    # init
data modify storage pc:temp summon set value {id:'basic_repair',hp:50,hpmax:50}
execute as @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] at @s run function pc:sys/object/summon/use

# fx
playsound minecraft:block.anvil.use master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2