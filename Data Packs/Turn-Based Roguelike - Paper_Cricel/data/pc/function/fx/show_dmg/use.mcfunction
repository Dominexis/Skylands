
# effect
execute store result storage pc:temp show_dmg.value float 0.1 run scoreboard players get #damage pc.main

scoreboard players operation #remain pc.main = #damage pc.main
scoreboard players operation #remain pc.main %= #10 sl.value
execute if score #remain pc.main matches 0 run data modify storage pc:temp show_dmg.value set string storage pc:temp show_dmg.value 0 -3
execute unless score #remain pc.main matches 0 run data modify storage pc:temp show_dmg.value set string storage pc:temp show_dmg.value 0 -1

execute unless data storage pc:temp damage.is_heal run data modify storage pc:temp show_dmg.display set value [{storage:"pc:temp",nbt:"show_dmg.value"}]
execute if data storage pc:temp damage.is_heal run data modify storage pc:temp show_dmg.display set value [{storage:"pc:temp",nbt:"show_dmg.value",color:"green"}]

execute anchored eyes run summon item ^ ^1 ^ {Tags:[pc.fx.show_dmg,"pc.summon"],Item:{id:paper,components:{item_model:air}},Motion:[0.1d,0.4d,0.1d],Age:-32768s,PickupDelay:9999999,\
    Passengers:[{id:"text_display",alignment: "center", background: 0, billboard: "center", default_background: 0b, fall_distance: 0.0d, line_width: 200, see_through: 1b, shadow: 1b, shadow_strength: 0.0f, teleport_duration: 2, text: [{storage:"pc:temp",nbt:"show_dmg.display",interpret:true}], transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 4.0f, 1.0f], translation: [-0.15f, -0.5f, 0.0f]}, view_range: 2.0f}]}

execute as @e[type=item,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] at @s if entity @e[type=item,tag=pc.fx.show_dmg,tag=!pc.summon,distance=..0.1,limit=1] positioned ~ ~0.75 ~ run function pc:fx/show_dmg/offset_y

data remove storage pc:temp show_dmg
tag @e[type=item,tag=pc.summon,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,limit=1] remove pc.summon