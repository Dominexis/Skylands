
data modify storage pc:temp hotbar set from entity @s data.hotbar

execute if data storage pc:temp hotbar.move.id run function pc:sys/entity/ally/start_combat/item {hotbar:"move"}
execute if data storage pc:temp hotbar.repair.id run function pc:sys/entity/ally/start_combat/item {hotbar:"repair"}
execute if data storage pc:temp hotbar.skill[0].id run function pc:sys/entity/ally/start_combat/item {hotbar:"skill[0]"}
execute if data storage pc:temp hotbar.skill[1].id run function pc:sys/entity/ally/start_combat/item {hotbar:"skill[1]"}
execute if data storage pc:temp hotbar.skill[2].id run function pc:sys/entity/ally/start_combat/item {hotbar:"skill[2]"}
execute if data storage pc:temp hotbar.skill[3].id run function pc:sys/entity/ally/start_combat/item {hotbar:"skill[3]"}
execute if data storage pc:temp hotbar.skill[4].id run function pc:sys/entity/ally/start_combat/item {hotbar:"skill[4]"}

data modify entity @s data.hotbar set from storage pc:temp hotbar