
# effect
tag @s add pc.sys.atker
tag @s add pc.object.now
scoreboard players set $game.acting_time pc.main 1

scoreboard players operation @p[predicate=sl:player,tag=pc.user,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.ep -= #ep.cost pc.main
function pc:sys/player/rc/get_durability with storage pc:temp rc.now
$execute unless score #dbmax pc.main matches -1 store result entity @s data.durability.$(category) int 1 run scoreboard players remove #db pc.main 1

$function pc:item/$(category2)/$(item)/use
$function pc:sys/object/passive/use {type:'use_$(category2)'}