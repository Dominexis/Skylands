
# effect
execute if data storage pc:temp damage.display run return fail

# damage taken back
function pc:sys/object/damage/atker_temp/save {id:"skill_cactus"}

function pc:sys/utils/math/get {id:"entity @s data.in_combat.skill.cactus.hurt_count 10"}
execute as @e[predicate=pc:object/mob,type=!player,tag=pc.damage.skill_cactus,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/cactus/on_hurt/2

function pc:sys/object/damage/atker_temp/load {id:"skill_cactus"}

# hurt count
data modify storage pc:temp repair set value {value:0,item:'cactus'}
function pc:sys/item/durability/get_value
execute unless score #db pc.main matches ..0 run function pc:item/skill/cactus/on_hurt/durability