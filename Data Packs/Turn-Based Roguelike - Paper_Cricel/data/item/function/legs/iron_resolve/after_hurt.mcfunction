
scoreboard players operation #perc pc.main = @s pc.hp
scoreboard players operation #perc pc.main *= #100 sl.value
scoreboard players operation #perc pc.main /= @s pc.hpmax

execute unless score #perc pc.main matches ..50 run return fail
execute if data entity @s data.effects[{id:"iron_resolve"}] run return fail

data modify storage pc:temp effect set value {id:iron_resolve,type:'unstackable'}
function sys:effect/apply

# fx
function item:legs/iron_resolve/fx_active/use
playsound minecraft:entity.iron_golem.hurt master @a ~ ~1024 ~ 0 1.5 1
function sys:fx/text/use {text:{nbt:"sys.fx.iron_resolve",storage:"pc:lang",interpret:1b}}