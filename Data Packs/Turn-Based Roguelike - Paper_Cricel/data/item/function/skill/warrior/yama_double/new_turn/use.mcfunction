
scoreboard players operation #hp pc.main = @s pc.hp
scoreboard players operation #hp pc.main *= #100 sl.value
scoreboard players operation #hp pc.main /= @s pc.hpmax
execute if score #hp pc.main matches 25.. run return fail

scoreboard players set @s pc.entity.untargetable 1
function sys:entity/intent/clear
function sys:entity/intent/icon/self/clear

# fx
function item:skill/warrior/yama_double/new_turn/fx/use