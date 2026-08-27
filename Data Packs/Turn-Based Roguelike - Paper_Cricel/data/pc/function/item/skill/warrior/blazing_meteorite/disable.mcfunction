
$data modify entity @s data.hotbar.$(hotbar).disable_turn set value 2

data modify storage pc:temp hotbar set from entity @s data.hotbar
execute as @a[predicate=pc:sys/entity/inturn,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] at @s run function pc:sys/player/hotbar/use