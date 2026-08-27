
scoreboard players operation #skill.fading_compass.repeat pc.main = #db pc.main
scoreboard players operation #skill.fading_compass.repeat pc.main += #dbcost pc.main
scoreboard players add #skill.fading_compass.repeat pc.main 1

function pc:item/skill/warrior/fading_compass/2

# fx
playsound minecraft:entity.dolphin.death master @a ~ ~1024 ~ 0 0 1
playsound minecraft:item.spyglass.use master @a ~ ~1024 ~ 0 0 1