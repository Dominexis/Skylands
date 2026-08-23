
scoreboard players operation #self sl.id = @s sl.id
tag @e[predicate=pc:sys/entity/player,predicate=pc:sys/owner/player,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] add pc.player.now
item replace entity 20060423-0-0-1-1 contents from entity @s weapon.mainhand

function pc:sys/player/rc/main
function pc:sys/grid/select/main
function pc:sys/player/title/turn/main

item replace entity 20060423-0-0-1-1 contents with air
tag @e[tag=pc.player.now,type=armor_stand,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] remove pc.player.now