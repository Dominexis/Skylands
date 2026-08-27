
data modify storage pc:temp hotbar set from entity @s data.hotbar

scoreboard players set #value pc.main -1
execute if data storage pc:temp hotbar.move.id if data storage pc:temp hotbar.move.disable_turn run function pc:sys/utils/math/calculate {id:"storage pc:temp hotbar.move.disable_turn"}
execute if data storage pc:temp hotbar.repair.id if data storage pc:temp hotbar.repair.disable_turn run function pc:sys/utils/math/calculate {id:"storage pc:temp hotbar.repair.disable_turn"}
execute if data storage pc:temp hotbar.skill[0].id if data storage pc:temp hotbar.skill[0].disable_turn run function pc:sys/utils/math/calculate {id:"storage pc:temp hotbar.skill[0].disable_turn"}
execute if data storage pc:temp hotbar.skill[1].id if data storage pc:temp hotbar.skill[1].disable_turn run function pc:sys/utils/math/calculate {id:"storage pc:temp hotbar.skill[1].disable_turn"}
execute if data storage pc:temp hotbar.skill[2].id if data storage pc:temp hotbar.skill[2].disable_turn run function pc:sys/utils/math/calculate {id:"storage pc:temp hotbar.skill[2].disable_turn"}
execute if data storage pc:temp hotbar.skill[3].id if data storage pc:temp hotbar.skill[3].disable_turn run function pc:sys/utils/math/calculate {id:"storage pc:temp hotbar.skill[3].disable_turn"}
execute if data storage pc:temp hotbar.skill[4].id if data storage pc:temp hotbar.skill[4].disable_turn run function pc:sys/utils/math/calculate {id:"storage pc:temp hotbar.skill[4].disable_turn"}

data modify entity @s data.hotbar set from storage pc:temp hotbar