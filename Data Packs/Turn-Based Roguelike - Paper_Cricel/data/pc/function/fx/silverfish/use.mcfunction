
# effect
scoreboard players operation #this pc.main = @s pc.object_id
execute as @e[type=minecraft:silverfish,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.fx.silverfish.buddies] if score @s pc.object_id = #this pc.main run function pc:void
execute store result score #count pc.main run data get entity @s data.silverfish_count

execute if score #count pc.main matches 2.. run summon minecraft:silverfish ^0.45 ^ ^-0.45 {Tags:["pc.fx.silverfish.buddies","pc.fx.silverfish.1","pc.fx","pc.summon"],NoAI:1b,Invulnerable:1b}
execute if score #count pc.main matches 3.. run summon minecraft:silverfish ^-0.45 ^ ^-0.45 {Tags:["pc.fx.silverfish.buddies","pc.fx.silverfish.2","pc.fx","pc.summon"],NoAI:1b,Invulnerable:1b}
execute if score #count pc.main matches 4.. run summon minecraft:silverfish ^0.45 ^ ^0.45 {Tags:["pc.fx.silverfish.buddies","pc.fx.silverfish.3","pc.fx","pc.summon"],NoAI:1b,Invulnerable:1b}
execute if score #count pc.main matches 5.. run summon minecraft:silverfish ^-0.45 ^ ^0.45 {Tags:["pc.fx.silverfish.buddies","pc.fx.silverfish.4","pc.fx","pc.summon"],NoAI:1b,Invulnerable:1b}
execute if score #count pc.main matches 6.. run summon minecraft:silverfish ^0.9 ^ ^0.9 {Tags:["pc.fx.silverfish.buddies","pc.fx.silverfish.5","pc.fx","pc.summon"],NoAI:1b,Invulnerable:1b}
execute if score #count pc.main matches 7.. run summon minecraft:silverfish ^-0.9 ^ ^-0.9 {Tags:["pc.fx.silverfish.buddies","pc.fx.silverfish.6","pc.fx","pc.summon"],NoAI:1b,Invulnerable:1b}
execute if score #count pc.main matches 8.. run summon minecraft:silverfish ^-0.9 ^ ^0.9 {Tags:["pc.fx.silverfish.buddies","pc.fx.silverfish.7","pc.fx","pc.summon"],NoAI:1b,Invulnerable:1b}
execute if score #count pc.main matches 9.. run summon minecraft:silverfish ^0.9 ^ ^-0.9 {Tags:["pc.fx.silverfish.buddies","pc.fx.silverfish.8","pc.fx","pc.summon"],NoAI:1b,Invulnerable:1b}

execute as @e[type=minecraft:silverfish,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] run rotate @s ~ ~
scoreboard players operation @e[type=minecraft:silverfish,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] pc.object_id = #this pc.main
tag @e[type=minecraft:silverfish,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,tag=pc.summon] remove pc.summon

# fx