
tag @s add pc.sys.rc
tag @s add pc.user

# Player Data
data modify storage pc:temp rc.now set from entity @s SelectedItem.components."minecraft:custom_data".pc
data modify storage pc:temp rc.now.category2 set from storage pc:temp rc.now.category
execute if data storage pc:temp {rc:{now:{category:"skill1"}}} run data modify storage pc:temp rc.now.category2 set value skill
execute if data storage pc:temp {rc:{now:{category:"skill2"}}} run data modify storage pc:temp rc.now.category2 set value skill
execute if data storage pc:temp {rc:{now:{category:"skill3"}}} run data modify storage pc:temp rc.now.category2 set value skill

scoreboard players operation #this pc.main = @s sl.id
execute as @e[type=!minecraft:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=pc:object/ally_player] if score @s sl.id = #this pc.main at @s run function pc:sys/player/rc/2

tag @s remove pc.user
data remove storage pc:temp rc