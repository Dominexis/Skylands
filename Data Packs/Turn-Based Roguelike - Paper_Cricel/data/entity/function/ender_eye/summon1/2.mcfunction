
# fx
execute positioned ~ ~-0.75 ~ rotated 0 ~ run function entity:ender_eye/fx/gaze/use
execute positioned ~ ~-0.75 ~ rotated 90 ~ run function entity:ender_eye/fx/gaze/use
execute positioned ~ ~-0.75 ~ rotated 180 ~ run function entity:ender_eye/fx/gaze/use
execute positioned ~ ~-0.75 ~ rotated 270 ~ run function entity:ender_eye/fx/gaze/use

playsound minecraft:block.respawn_anchor.charge master @a ~ ~1024 ~ 0 0 0.75
playsound sys:electricity master @a ~ ~1024 ~ 0 1 0.75