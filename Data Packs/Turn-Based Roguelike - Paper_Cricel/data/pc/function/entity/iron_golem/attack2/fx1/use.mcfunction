
summon minecraft:item_display ~ ~ ~ {Tags:[pc.entity.iron_golem.attack2.fx1],item: {count: 1, id: "minecraft:iron_block"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 1.5f], translation: [0.0f, 0.75f, 0.0f]},teleport_duration:1}

# fx
particle minecraft:spit ~ ~ ~ 0.3 0.3 0.3 0.25 30 force
playsound minecraft:entity.item.pickup master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.iron_golem.repair master @a ~ ~1024 ~ 0 0 0.75