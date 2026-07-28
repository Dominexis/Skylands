
scoreboard players operation #self sl.id = @s sl.id
tag @e[predicate=sys:entity/player,predicate=sys:owner/player,type=armor_stand,limit=1] add pc.player.now
item replace entity 20060423-0-0-1-1 contents from entity @s weapon.mainhand

function sys:player/rc/main
function sys:grid/select/main
function sys:player/title/turn/main

item replace entity 20060423-0-0-1-1 contents with air
tag @e[tag=pc.player.now,type=armor_stand,limit=1] remove pc.player.now