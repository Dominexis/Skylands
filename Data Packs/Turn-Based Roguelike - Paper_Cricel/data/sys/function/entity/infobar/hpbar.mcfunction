
scoreboard players set #temp pc.hp 0
scoreboard players operation #current pc.hp = @s pc.hp
scoreboard players operation #current pc.hp *= #10 sl.value
scoreboard players operation #current pc.hp /= @s pc.hpmax

function sys:entity/infobar/hpbar/loop