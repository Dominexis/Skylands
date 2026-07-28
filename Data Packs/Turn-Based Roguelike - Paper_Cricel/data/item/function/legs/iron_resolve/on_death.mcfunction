
execute if data entity @s data.hotbar.legs.combat.power_through run return fail

scoreboard players set #undyne pc.main 1
scoreboard players set @s pc.hp 1
data modify entity @s data.hotbar.legs.combat.power_through set value 1b

# fx
function sys:fx/text/use {text:{nbt:"sys.fx.power_through",storage:"pc:lang",interpret:1b}}