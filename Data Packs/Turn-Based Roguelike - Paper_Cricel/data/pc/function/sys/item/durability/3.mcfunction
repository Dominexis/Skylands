
# effect
execute if data storage pc:temp repair.is_max run return run function pc:sys/item/durability/3_max

scoreboard players operation #db pc.main += #db.value pc.main
execute if score #db pc.main matches ..-1 run scoreboard players set #db pc.main 0
execute unless data storage pc:temp {repair:{unlimit:true}} if score #db pc.main > #dbmax pc.main run scoreboard players operation #db pc.main = #dbmax pc.main

function pc:sys/item/durability/4 with storage pc:temp repair