
# effect
scoreboard players operation #dbmax pc.main += #db.value pc.main
execute if score #dbmax pc.main matches ..-1 run scoreboard players set #dbmax pc.main 0

function pc:sys/item/durability/4 with storage pc:temp repair