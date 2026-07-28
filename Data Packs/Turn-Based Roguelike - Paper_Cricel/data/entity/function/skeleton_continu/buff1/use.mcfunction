
execute as @e[tag=pc.intent.now,type=marker,limit=1] at @s run function entity:skeleton_continu/buff1/2
data modify entity @s data.intent.combat append value 'buff1'
function sys:combat/turn/end_act

# fx
playsound minecraft:item.crossbow.quick_charge_3 master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.zombie.infect master @a ~ ~1024 ~ 0 0 0.5
playsound minecraft:block.grindstone.use master @a ~ ~1024 ~ 0 0 0.25
function sys:fx/text/use {text:{nbt:"sys.fx.whet",storage:"pc:lang",interpret:1b}}