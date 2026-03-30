
# effect
scoreboard players add @s pc.fx.float_eye 1

execute if score @s pc.fx.float_eye matches 1..40 at @s run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.5f], translation: [0.03f, -0.775f, 0.0f]},start_interpolation:0,interpolation_duration:40}
execute if score @s pc.fx.float_eye matches 41..50 at @s run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.5f], translation: [0.03f, 0.025f, 0.0f]},start_interpolation:0,interpolation_duration:10}
execute if score @s pc.fx.float_eye matches 51..80 at @s run data merge entity @s {transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.5f], translation: [0.03f, 0.075f, 0.0f]},start_interpolation:0,interpolation_duration:30}

#execute if score @s pc.fx.float_eye matches 20 run data merge entity @s {transformation: {scale: [1.0f, 0.0625f, 1.0f]}, start_interpolation:0, interpolation_duration:3}
#execute if score @s pc.fx.float_eye matches 23 run data merge entity @s {transformation: {scale: [1.0f, 1.0f, 1.0f]}, start_interpolation:0, interpolation_duration:2}

execute if score @s pc.fx.float_eye matches 40 run playsound minecraft:entity.ender_dragon.flap master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1.25
execute if score @s pc.fx.float_eye matches 41..50 run function pc:object/ender_eye/2
execute if score @s pc.fx.float_eye matches 51..80 run function pc:object/ender_eye/3

#execute if score @s pc.fx.float_eye matches 60 run data merge entity @s {transformation: {scale: [1.0f, 0.0625f, 1.0f]}, start_interpolation:0, interpolation_duration:3}
#execute if score @s pc.fx.float_eye matches 63 run data merge entity @s {transformation: {scale: [1.0f, 1.0f, 1.0f]}, start_interpolation:0, interpolation_duration:2}

execute if score @s pc.fx.float_eye matches 81 run function pc:object/ender_eye/4

# fx