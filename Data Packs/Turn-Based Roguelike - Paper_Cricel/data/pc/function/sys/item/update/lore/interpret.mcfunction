
scoreboard players remove #count pc.main 1

item modify entity @s contents {function:"set_lore",mode:"append",lore:[{nbt:"update.lore.result[0]",storage:"pc:temp",interpret:1b}],entity:"this"}
data remove storage pc:temp update.lore.result[0]

execute if score #count pc.main matches 1.. run function pc:sys/item/update/lore/interpret