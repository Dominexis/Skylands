
item replace entity @s contents with ender_eye[custom_model_data={colors:[16726072]},item_model="pc:mob/ender_eye"]
data remove entity @s data.schedule[{func:"item replace entity @s contents with ender_eye"}]
function pc:sys/entity/schedule/use {func:"item replace entity @s contents with ender_eye",delay:10}

# fx
playsound minecraft:entity.ender_eye.death master @a ~ ~1024 ~ 0 1.5 0.5
playsound minecraft:entity.shulker.hurt master @a ~ ~1024 ~ 0 0.6 0.25
playsound minecraft:entity.breeze.deflect master @a ~ ~1024 ~ 0 1.25 0.5
playsound minecraft:block.note_block.basedrum master @a ~ ~1024 ~ 0 0.75 1.0