
function pc:sys/utils/local_thread/atker/save {id:"move.ender_pearl"}

scoreboard players set #damage pc.main 1
scoreboard players set @s pc.entity.victim 1
data modify storage pc:temp damage set value {lose_hp:1b}
function pc:sys/entity/dmg/atker

function pc:sys/utils/local_thread/atker/load {id:"move.ender_pearl"}

function pc:entity/move/phantom/summon