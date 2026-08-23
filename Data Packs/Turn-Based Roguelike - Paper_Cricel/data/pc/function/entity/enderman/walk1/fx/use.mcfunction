
summon minecraft:item_display ~ ~ ~ {Tags:[pc.fx, pc.entity.enderman.walk1, pc.summon], item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjA1ZDg4Yjg0ZjIxNThlMWMwMmIxNTEzOTU3MTc1ZTI4ZGFkYzcyZTllNzRhMjFhMTFjMjc3ZTk3MWI1OTdiMSJ9fX0="}]}}, count: 1, id: "minecraft:player_head"}, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.9999998f, 2.0f, 1.9999998f], translation: [0.0f, 0.5f, 0.0f]}}
rotate @e[tag=pc.summon,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ 0
data merge entity @e[tag=pc.summon,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] {teleport_duration: 1}
tag @e[tag=pc.summon,type=item_display,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.summon

# fx
playsound minecraft:entity.ender_eye.launch master @a ~ ~1024 ~ 0 0 1
playsound minecraft:block.end_portal_frame.fill master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.wither.shoot master @a ~ ~1024 ~ 0 0.75 0.2