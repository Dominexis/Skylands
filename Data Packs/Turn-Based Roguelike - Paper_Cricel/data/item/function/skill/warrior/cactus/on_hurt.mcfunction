
execute if entity @s[tag=pc.atker] run return fail
execute if data storage pc:temp damage{trigger:'passive'} run return fail
# execute store result score #x pc.main run function item:skill/warrior/cactus/get_x with storage pc:temp passive.current

# damage
function sys:utils/local_thread/atker/save {id:"skill.warrior.cactus"}

scoreboard players set #damage pc.main 4
scoreboard players set @e[tag=pc.local_thread.skill.warrior.cactus.atker,limit=1] pc.entity.victim 1
data modify storage pc:temp damage set value {trigger:'passive'}
function sys:entity/dmg/atker

function sys:utils/local_thread/atker/load {id:"skill.warrior.cactus"}

# db
# function sys:item/db/api/load with storage pc:temp passive.current
# execute if score #db pc.main matches 1.. run function item:skill/warrior/cactus/on_hurt/db with storage pc:temp passive.current

# fx
particle minecraft:electric_spark ~ ~ ~ 0.4 0.4 0.4 0 30 force
playsound minecraft:entity.player.hurt_sweet_berry_bush master @a ~ ~1024 ~ 0 2 1
playsound minecraft:entity.player.hurt_sweet_berry_bush master @a ~ ~1024 ~ 0 2 1
playsound minecraft:block.beehive.shear master @a ~ ~1024 ~ 0 2 1
playsound minecraft:block.beehive.shear master @a ~ ~1024 ~ 0 2 1