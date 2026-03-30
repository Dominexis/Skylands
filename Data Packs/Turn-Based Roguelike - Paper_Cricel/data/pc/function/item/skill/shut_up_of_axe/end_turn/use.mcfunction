
# effect
function pc:sys/object/rotate/proofread45
function pc:sys/object/rotate/is_diagonal
execute positioned ~-1.5 ~-100 ~-1.5 unless entity @s[tag=pc.sys.rotate_diagonal] rotated ~ 0 run function pc:item/skill/shut_up_of_axe/end_turn/select
execute positioned ~-1.5 ~-100 ~-1.5 if entity @s[tag=pc.sys.rotate_diagonal] rotated ~ 0 run function pc:item/skill/shut_up_of_axe/end_turn/select_diagonal

scoreboard players set #value pc.main 2
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/victim] at @s run function pc:passive/effect/apply {effect:"vulnerable"}

function pc:sys/grid/select/clear

# fx
execute at @s positioned ~ ~1 ~ rotated ~ 0 run function pc:item/skill/shut_up_of_axe/end_turn/dust
playsound minecraft:entity.wither.shoot master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 0.25 1.25
playsound minecraft:entity.ravager.attack master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 2 0.75
playsound minecraft:entity.fox.aggro master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 2 0.75
playsound minecraft:entity.fox.aggro master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 2 0.75