
execute as @e[tag=pc.intent.now,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:entity/skeleton_continu/buff1/2
data modify entity @s data.intent.combat append value 'buff1'
function pc:sys/combat/turn/end_act

# fx
playsound minecraft:item.crossbow.quick_charge_3 master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.zombie.infect master @a ~ ~1024 ~ 0 0 0.5
playsound minecraft:block.grindstone.use master @a ~ ~1024 ~ 0 0 0.25
function pc:sys/fx/text/use {text:{nbt:"sys.fx.whet",storage:"pc:lang",interpret:1b}}