
# hurt count
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.in_combat.skill.cactus.hurt_count"}
function pc:item/skill/cactus/new_turn/lore

# durability
data modify storage pc:temp repair set value {value:-1,item:"cactus"}
function pc:sys/item/durability/use