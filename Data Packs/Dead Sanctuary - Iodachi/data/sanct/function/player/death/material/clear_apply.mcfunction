$clear @s minecraft:rotten_flesh $(flesh)
$clear @s minecraft:bone $(bone)
$clear @s minecraft:fermented_spider_eye $(blood)

execute unless score #player_drops sanct.numbers matches 1.. run return 1

# Place gravestone
$summon minecraft:armor_stand ~ ~ ~ {Small:1b,Invisible:1b,Invulnerable:1b,DisabledSlots:4144959,attributes:[{id:"minecraft:scale",base:0}],Tags:["sanct.player_drops","sanct.require_grass_check"],Passengers:[{id:"minecraft:interaction",data:{player_drops:{flesh:$(flesh),bone:$(bone),blood:$(blood)}},width:0.8f,height:1f,response:1b,Tags:["sanct.player_drops","sanct.flesh$(flesh)","sanct.bone$(bone)","sanct.blood$(blood)"],Passengers:[{id:"minecraft:item_display",Tags:["sanct.player_drops"],transformation:{left_rotation:[0f,0.5f,0.5f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.87f,0.1f],scale:[0.8f,0.8f,0.8f]},item:{id:"minecraft:gray_bed"}},{id:"minecraft:block_display",Tags:["sanct.player_drops"],transformation:{left_rotation:[0f,0f,0.5f,0.5f],right_rotation:[0f,0f,0f,1f],translation:[0.5f,-1.47f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:cobblestone_wall"}},{id:"minecraft:text_display",Tags:["sanct.player_drops"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.07f,0.16f],scale:[0.325f,0.8f,1f]},text:{selector:"@a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,scores={sanct.death=1..},limit=1]",color:"gray"},background:-15198184}]}]}

execute rotated ~ 0 run tp @e[type=minecraft:armor_stand,tag=sanct.player_drops,distance=0,limit=1] ~ ~ ~ ~ ~
execute as @e[type=minecraft:armor_stand,tag=sanct.player_drops,distance=0,limit=1] on passengers run team join sanct.spell.player_drops @s