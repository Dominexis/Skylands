
summon minecraft:block_display ~ ~ ~ {Tags:[pc.fx,pc.entity.spider.attack2,pc.summon],block_state: {Name: "minecraft:cobweb"}, brightness: {block: 15, sky: 15}, shadow_strength: 0.0f, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}, view_range: 2.0f, teleport_duration: 1}
rotate @e[tag=pc.summon,type=block_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~
tag @e[tag=pc.summon,type=block_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon

# fx
playsound minecraft:block.wool.place master @a ~ ~1024 ~ 0 2 1
playsound minecraft:entity.spider.ambient master @a ~ ~1024 ~ 0 1.5 1
playsound minecraft:block.cobweb.place master @a ~ ~1024 ~ 0 0.75 1