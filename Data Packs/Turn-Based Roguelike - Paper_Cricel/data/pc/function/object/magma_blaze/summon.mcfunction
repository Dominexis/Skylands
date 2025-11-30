
# effect
summon blaze ~ ~ ~ {Tags:["pc.summon","pc.object.mob"],Passengers:[{id:"item_display",Tags:[pc.object.same_rot],fall_distance: 0.0d, item: {components: {"minecraft:custom_name": {bold: 1b, color: "gold", italic: 0b, text: "Magma Orb", underlined: 1b}, "minecraft:lore": [{color: "gray", italic: 0b, text: "Custom Head ID: 98852"}, {color: "blue", italic: 0b, text: "www.minecraft-heads.com"}], "minecraft:profile": {id: [I; 1575086201, -705609104, -2016062394, -565333527], properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjQ0MmExZTA4ZWE3N2ZkMTQ0YzhmZjRjZGFlZjZlMGE5YWFmYjgzZmRjZjM5OGQxNDhkOGYxNzQ0NGM4ZmE2NyJ9fX0="}]}}, count: 1, id: "minecraft:player_head"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.1f, 1.1f, 1.1f], translation: [0.0f, 0.0f, 0.0f]}}]}

    # Attribute
data modify storage pc:temp summon set value {id:'magma_blaze',hp:1200,hpmax:1200}
execute as @n[type=blaze,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/object/summon/use