# As : mage (enemy)
# At : [depends]
##

execute at @s run playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 2 0.5

tag @e[type=minecraft:marker,tag=synb.mark.spawnpos,distance=..30] add synb.tmp.bomb_candidate
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.bomb_candidate] at @s if entity @e[type=minecraft:block_display,tag=synb.attr.mage_bomb,distance=..1] run tag @s remove synb.tmp.bomb_candidate
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.bomb_candidate] at @s if entity @e[type=minecraft:slime,tag=synb.enemy.egg,distance=..1] run tag @s remove synb.tmp.bomb_candidate

execute at @e[type=minecraft:marker,tag=synb.tmp.bomb_candidate,distance=..50,sort=nearest,limit=1] run \
    summon minecraft:block_display ~ ~0.7 ~ {Tags:["synb.type.enemy_associate","synb.attr.mage_bomb","synb.tmp.new"],block_state:{Name:"minecraft:wither_skeleton_skull"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,-0.5f,-0.5f],scale:[1f,1f,1f]}}

# Arc
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.new] add synb.arg.particle_arc_target
scoreboard players set #particle synb.Tmp.Arg 2
function synb:utils/visuals/start_arc
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.tmp.new] remove synb.arg.particle_arc_target

# Cleanup
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:block_display,tag=synb.tmp.new] remove synb.tmp.new
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.bomb_candidate] remove synb.tmp.bomb_candidate
