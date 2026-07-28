
summon minecraft:item_display ~10 ~20 ~-10 {Tags:[pc.skill.blazing_meteorite], brightness: {block: 15, sky: 15}, item: {count: 1, id: "minecraft:magma_block"}, shadow_strength: 0.0f, teleport_duration: 1, transformation: {left_rotation: [0.35355353f, 0.14644669f, -0.3535534f, 0.85355335f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.0f, 1.9999999f, 1.9999998f], translation: [0.0f, 0.0f, 0.0f]}, view_range: 2.0f}

# fx
playsound minecraft:entity.blaze.shoot master @a ~ ~1024 ~ 0 0 1
playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~1024 ~ 0 0.9 1
playsound minecraft:block.end_portal.spawn master @a ~ ~1024 ~ 0 2 0.1