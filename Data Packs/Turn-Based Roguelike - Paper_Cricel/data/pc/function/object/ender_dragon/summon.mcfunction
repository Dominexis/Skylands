
# effect
summon item_display ~ ~1.5 ~ {Tags:["pc.summon",pc.mob.ender_dragon,"pc.object.mob"],item: {components: {"minecraft:dyed_color": 15790320, "minecraft:item_model": "pc:mob/ender_dragon"}, count: 1, id: "minecraft:paper"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [0.0f, 0.0f, 0.0f]}, teleport_duration:6}

    # Attribute
data modify storage pc:temp summon set value {id:'ender_dragon',hp:6000,hpmax:6000,height:0.8f}
execute as @e[type=item_display,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] at @s run function pc:sys/object/summon/use