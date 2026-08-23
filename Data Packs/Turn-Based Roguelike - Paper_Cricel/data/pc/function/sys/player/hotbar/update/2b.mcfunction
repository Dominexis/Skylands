
$clear @s *[custom_data~{pc:{hotbar:"$(hotbar)"}}]

$data modify storage pc:temp item set from entity @e[tag=pc.hotbar.self,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] data.hotbar.$(hotbar)
function pc:sys/item/summon/use {slot:"give"}