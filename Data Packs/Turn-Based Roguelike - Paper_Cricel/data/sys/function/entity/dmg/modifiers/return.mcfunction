
$scoreboard players set #$(value) sl.value $(value)
$scoreboard players operation #damage pc.main $(operation)= #$(value) sl.value
data remove storage pc:temp damage.modifiers[0]

execute if data storage pc:temp damage.modifiers[0] run function sys:entity/dmg/modifiers/return with storage pc:temp damage.modifiers[0]