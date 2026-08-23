
function pc:sys/utils/local_thread/atker/save {id:"skill.warrior.heal_liquor"}

scoreboard players set @s pc.entity.victim 1
scoreboard players operation #damage pc.main = @s pc.hpmax
scoreboard players operation #damage pc.main /= #2 sl.value
data modify storage pc:temp damage set value {mode:"heal"}
function pc:sys/entity/dmg/victim

function pc:sys/utils/local_thread/atker/load {id:"skill.warrior.heal_liquor"}

data modify storage pc:temp effect set value {id:'misery',value:1}
function pc:sys/effect/apply

function pc:sys/combat/turn/end_act

# fx
playsound minecraft:block.note_block.chime master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.witch.drink master @a ~ ~1024 ~ 0 0 1
playsound minecraft:block.brewing_stand.brew master @a ~ ~1024 ~ 0 2 1