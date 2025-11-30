
# effect
execute store result score #damage pc.main run data get entity @s data.in_combat.skill.cactus.hurt_count 10
scoreboard players add #damage pc.main 20

execute as @e[type=marker,tag=pc.grid.now,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:item/skill/cactus/3

# fx
function pc:item/skill/cactus/fx/use
particle minecraft:trial_omen ^ ^1 ^
playsound entity.bee.sting master @a[predicate=pc:player/ingame,predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.25 2 0.25