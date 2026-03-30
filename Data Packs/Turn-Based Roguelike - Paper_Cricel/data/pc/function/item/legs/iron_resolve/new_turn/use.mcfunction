# exe : object

# effect
scoreboard players operation #limit pc.main = @s pc.hpmax
scoreboard players operation #limit pc.main /= #2 sl.value

execute if score @s pc.hp <= #limit pc.main run function pc:item/legs/iron_resolve/new_turn/2