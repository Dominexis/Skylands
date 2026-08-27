
# if (already hold) :
execute if entity @s[tag=pc.player.rc.using] run return fail
tag @s add pc.player.rc.using

# elif (is in act) : say §e§l[DEBUG]§r still in act.
execute if score $act.running pc.game matches 1 run return fail

# else :
tag @s add pc.self
scoreboard players operation #self sl.id = @s sl.id
tag @e[predicate=pc:sys/entity/player,predicate=pc:sys/owner/player,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] add pc.player.now
data modify storage pc:temp rc_item set from entity @s SelectedItem.components."minecraft:custom_data".pc

function pc:sys/player/rc/2

tag @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.player.now
tag @s remove pc.self