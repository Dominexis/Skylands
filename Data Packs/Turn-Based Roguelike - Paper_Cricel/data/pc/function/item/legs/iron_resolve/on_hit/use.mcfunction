# exe : object

# effect
scoreboard players operation #limit pc.main = @s pc.hpmax
scoreboard players operation #limit pc.main *= #50 sl.value
scoreboard players operation #limit pc.main /= #100 sl.value

execute if score @s pc.hp <= #limit pc.main run function pc:item/legs/iron_resolve/on_hit/2