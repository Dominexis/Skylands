
scoreboard players operation #skill.borrowed_time pc.main = @s pc.epmax
scoreboard players operation #value pc.main = #skill.borrowed_time pc.main
function pc:sys/item/ep/gain

data modify storage pc:temp effect set value {id:'energized'}
execute store result storage pc:temp effect.value int -1 run scoreboard players get #skill.borrowed_time pc.main
function pc:sys/effect/apply

function pc:sys/combat/turn/end_act

# fx
function pc:item/skill/warrior/borrowed_time/fx/use
playsound minecraft:block.ender_chest.close master @a ~ ~1024 ~ 0 1 1
playsound minecraft:block.note_block.bell master @a ~ ~1024 ~ 0 0.85 1