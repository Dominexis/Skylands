
# effect
summon item_display ~ ~1.1 ~ {Tags:[pc.teen_repair,"pc.summon","pc.object.repair","pc.object.ally"],item: {count: 1, id: "minecraft:anvil"}, transformation: {left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [0.0f, -0.5f, 0.0f]},Rotation:[-180f,0f],Passengers: [{alignment: "center", background: 0, default_background: 0b, id: "minecraft:text_display", line_width: 200, teleport_duration:2, see_through: 0b, shadow: 0b, text: '"(° ▽° ) "', transformation: {left_rotation: [-0.7071068f, 0.0f, 0.0f, 0.7071068f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2f, 2f, 2f], translation: [0.0f, 0.0f, 0.35f]}}]}

    # init
data modify storage pc:temp summon set value {id:'teen_repair',hp:80,hpmax:80}
execute as @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] at @s run function pc:sys/object/summon/use

# fx
playsound minecraft:block.anvil.use master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2