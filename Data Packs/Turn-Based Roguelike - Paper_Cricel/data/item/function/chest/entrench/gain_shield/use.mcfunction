
data modify entity @s data.hotbar.chest.combat.times set value 0
function sys:utils/local_thread/atker/save {id:"chest.entrench"}

scoreboard players set #damage pc.main 6
execute as @e[predicate=sys:entity/enemy] at @s run function item:chest/entrench/gain_shield/victim
function sys:entity/dmg/atker

function sys:utils/local_thread/atker/load {id:"chest.entrench"}

# fx
playsound minecraft:block.stem.break master @a ~ ~1024 ~ 0 0 1
playsound sys:squeak master @a ~ ~1024 ~ 0 1 0.25
playsound minecraft:block.anvil.land master @a ~ ~1024 ~ 0 0 0.25