
execute if data storage pc:game grid.fire_area.round run playsound minecraft:entity.generic.burn master @a ~ ~1024 ~ 0 1 0.5
execute if data storage pc:game grid.fire_area.hit run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~1024 ~ 0 0 0.25

data remove storage pc:game grid