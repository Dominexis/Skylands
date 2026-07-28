
scoreboard players operation #perc pc.main = @s pc.hp
scoreboard players operation #perc pc.main *= #100 sl.value
scoreboard players operation #perc pc.main /= @s pc.hpmax

execute if score #perc pc.main matches ..50 run return fail

data remove storage pc:temp passive.current

# fx
function item:legs/iron_resolve/fx_active/clear
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~1024 ~ 0 0.75 0.2
function sys:fx/text/use {text:{nbt:"sys.fx.iron_resolve_wear",storage:"pc:lang",interpret:1b}}