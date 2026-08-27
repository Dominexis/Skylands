
tag @s remove pc.entity.hoglin_tnt.attack2.return

tp @s 20060423-7a52-4fb7-99dd-20f825a61db9

function pc:entity/hoglin_tnt/attack2/clear

# fx
playsound minecraft:entity.hoglin.retreat master @a ~ ~1024 ~ 0 2 1
playsound minecraft:entity.player.teleport master @a ~ ~1024 ~ 0 1 1