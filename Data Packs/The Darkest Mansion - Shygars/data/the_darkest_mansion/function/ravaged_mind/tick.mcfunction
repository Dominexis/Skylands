#Rotate Model to correspond to Mob
execute on vehicle rotated as @s on passengers if entity @e[tag=aj.ravaged_mind.root] run rotate @s ~ 0

#Walking
execute on vehicle unless predicate the_darkest_mansion:staying_still positioned ~ ~2 ~ as @e[tag=aj.ravaged_mind.root,distance=..0.1] unless entity @s[tag=Walking] unless entity @s[tag=Targeting] unless entity @s[tag=Dead] run function animated_java:ravaged_mind/animations/walk01/tween {to_frame:0,duration:0}
execute on vehicle unless predicate the_darkest_mansion:staying_still positioned ~ ~2 ~ as @e[tag=aj.ravaged_mind.root,distance=..0.1] unless entity @s[tag=Walking] unless entity @s[tag=Targeting] unless entity @s[tag=Dead] run tag @s remove Idle
execute on vehicle unless predicate the_darkest_mansion:staying_still positioned ~ ~2 ~ as @e[tag=aj.ravaged_mind.root,distance=..0.1] unless entity @s[tag=Walking] unless entity @s[tag=Targeting] unless entity @s[tag=Dead] run tag @s add Walking

#Stopped Walking
execute on vehicle if predicate the_darkest_mansion:staying_still positioned ~ ~2 ~ as @e[tag=aj.ravaged_mind.root,distance=..0.1] unless entity @s[tag=Idle] unless entity @s[tag=Targeting] unless entity @s[tag=Dead] run function animated_java:ravaged_mind/animations/idle01/tween {to_frame:0,duration:3}
execute on vehicle if predicate the_darkest_mansion:staying_still positioned ~ ~2 ~ as @e[tag=aj.ravaged_mind.root,distance=..0.1] unless entity @s[tag=Idle] unless entity @s[tag=Targeting] unless entity @s[tag=Dead] run tag @s remove Walking
execute on vehicle if predicate the_darkest_mansion:staying_still positioned ~ ~2 ~ as @e[tag=aj.ravaged_mind.root,distance=..0.1] unless entity @s[tag=Idle] unless entity @s[tag=Targeting] unless entity @s[tag=Dead] run tag @s add Idle

#Damaged Tint and Sound
execute unless entity @s[tag=Dead] on vehicle if entity @s[tag=RavagedMind,nbt={HurtTime:0s}] on passengers if entity @e[tag=aj.ravaged_mind.root] run function animated_java:ravaged_mind/variants/default/apply
execute on vehicle if entity @s[tag=RavagedMind,nbt=!{HurtTime:0s}] on passengers if entity @e[tag=aj.ravaged_mind.root] run function animated_java:ravaged_mind/variants/damaged/apply
execute on vehicle if entity @s[tag=RavagedMind,nbt={HurtTime:8s}] run playsound minecraft:entity.ravager.hurt hostile @a ~ ~ ~ 1 1.5

#Stop charging after hitting a wall
execute unless block ^ ^ ^1.5 air run tag @s[tag=Charging] add WallBump
execute unless block ^ ^ ^1.25 air run tag @s[tag=Charging] add WallBump
execute unless block ^ ^ ^1 air run tag @s[tag=Charging] add WallBump
execute unless block ^ ^ ^0.75 air run tag @s[tag=Charging] add WallBump

execute unless block ^ ^1 ^1.5 air run tag @s[tag=Charging] add WallBump
execute unless block ^ ^1 ^1.25 air run tag @s[tag=Charging] add WallBump
execute unless block ^ ^1 ^1 air run tag @s[tag=Charging] add WallBump
execute unless block ^ ^1 ^0.75 air run tag @s[tag=Charging] add WallBump

execute unless block ^0.05 ^ ^1.5 air run tag @s[tag=Charging] add WallBump
execute unless block ^0.05 ^ ^1.25 air run tag @s[tag=Charging] add WallBump
execute unless block ^0.05 ^ ^1 air run tag @s[tag=Charging] add WallBump
execute unless block ^0.05 ^ ^0.75 air run tag @s[tag=Charging] add WallBump

execute unless block ^0.05 ^1 ^1.5 air run tag @s[tag=Charging] add WallBump
execute unless block ^0.05 ^1 ^1.25 air run tag @s[tag=Charging] add WallBump
execute unless block ^0.05 ^1 ^1 air run tag @s[tag=Charging] add WallBump
execute unless block ^0.05 ^1 ^0.75 air run tag @s[tag=Charging] add WallBump

execute unless block ^-0.05 ^ ^1.5 air run tag @s[tag=Charging] add WallBump
execute unless block ^-0.05 ^ ^1.25 air run tag @s[tag=Charging] add WallBump
execute unless block ^-0.05 ^ ^1 air run tag @s[tag=Charging] add WallBump
execute unless block ^-0.05 ^ ^0.75 air run tag @s[tag=Charging] add WallBump

execute unless block ^-0.05 ^1 ^1.5 air run tag @s[tag=Charging] add WallBump
execute unless block ^-0.05 ^1 ^1.25 air run tag @s[tag=Charging] add WallBump
execute unless block ^-0.05 ^1 ^1 air run tag @s[tag=Charging] add WallBump
execute unless block ^-0.05 ^1 ^0.75 air run tag @s[tag=Charging] add WallBump

execute if entity @s[tag=WallBump] run playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 1 1.5
execute if entity @s[tag=WallBump] run playsound minecraft:entity.zombie.attack_wooden_door hostile @a ~ ~ ~ 3 0.785
execute if entity @s[tag=WallBump] on vehicle run particle block{block_state:"minecraft:dark_oak_planks"} ~ ~1 ~ 1 1 1 0.8 100 force
tag @s[tag=WallBump] remove Charging
tag @s[tag=WallBump] remove Targeting
execute if entity @s[tag=WallBump] run tag @p remove Target
execute if entity @s[tag=WallBump] run function animated_java:ravaged_mind/animations/idle01/tween {to_frame:0,duration:10}
execute if entity @s[tag=WallBump] on vehicle run data merge entity @s {NoAI:0}
tag @s[tag=WallBump] add Idle
tag @s[tag=WallBump] add TDMTimer2
tag @s[tag=WallBump] remove TDMTimer1
tag @s[tag=WallBump] remove WallBump

#Charge if Hurt
execute unless entity @s[tag=Targeting] unless entity @s[tag=Dead] unless entity @s[tag=TDMTimer2] on vehicle if entity @s[nbt={HurtTime:6s}] on attacker run tag @s add Target
execute unless entity @s[tag=Targeting] unless entity @s[tag=Dead] unless entity @s[tag=TDMTimer2] on vehicle if entity @s[nbt={HurtTime:6s}] on passengers if entity @e[tag=aj.ravaged_mind.root] run function the_darkest_mansion:ravaged_mind/charging

#Charge if Player is too close or walking near
execute unless entity @s[tag=Targeting] unless entity @s[tag=Dead] unless entity @s[tag=TDMTimer2] run tag @p[tag=Loud,distance=..10] add Target
execute unless entity @s[tag=Targeting] unless entity @s[tag=Dead] unless entity @s[tag=TDMTimer2] if entity @p[tag=Loud,distance=..10] run function the_darkest_mansion:ravaged_mind/charging
execute unless entity @s[tag=Targeting] unless entity @s[tag=Dead] unless entity @s[tag=TDMTimer2] run tag @p[distance=..2] add Target
execute unless entity @s[tag=Targeting] unless entity @s[tag=Dead] unless entity @s[tag=TDMTimer2] if entity @p[distance=..2] run function the_darkest_mansion:ravaged_mind/charging

#Looking at Target
execute if entity @s[tag=Targeting,tag=!Charging] on vehicle facing entity @e[tag=Target] feet run rotate @s ~ 0

#Charging straight
execute if entity @s[tag=Charging] on vehicle run tp @s ^ ^ ^0.75
execute if entity @s[tag=Charging] on vehicle run particle block{block_state:"minecraft:dark_oak_planks"} ^ ^ ^-1 0.1 0 0.1 0.08 10 force

#Hurt Player if caught in the Charge
execute if entity @s[tag=Charging] positioned ^ ^ ^1.25 run tag @p[distance=..1,tag=!TDMTimer1] add Charged
execute if entity @s[tag=Charging] positioned ^ ^0.5 ^1.25 run tag @p[distance=..1,tag=!TDMTimer1] add Charged
execute if entity @s[tag=Charging] positioned ^ ^1 ^1.25 run tag @p[distance=..1,tag=!TDMTimer1] add Charged
execute on vehicle run damage @p[tag=Charged,tag=!TDMTimer1] 12 minecraft:mob_attack by @s from @s
execute if entity @p[scores={TDMTimer1=1}] run scoreboard players set $strength player_motion.api.launch 12500
execute as @p[scores={TDMTimer1=1}] at @s rotated as @n[tag=aj.ravaged_mind.root] rotated ~ ~-15 run function player_motion:api/launch_looking
tag @p[tag=Charged,tag=!TDMTimer1] add TDMTimer1
execute if entity @p[tag=Charged] run playsound minecraft:entity.player.attack.knockback hostile @a ~ ~ ~ 1 0.75
execute if entity @p[tag=Charged] run playsound minecraft:entity.ravager.step hostile @a ~ ~ ~ 1 0.75
execute if entity @p[tag=Charged] run particle block{block_state:"minecraft:stripped_oak_log"} ~ ~1 ~ 0.75 0.75 0.75 0.8 100 force
execute if entity @p[tag=Charged] run scoreboard players set @s TDMTimer1 50
tag @p[tag=Charged] remove Charged

#Stop charging after some time (and when the player has been hit)
execute if score @s TDMTimer1 matches 50.. run playsound minecraft:entity.ravager.stunned hostile @a ~ ~ ~ 1 1.5
tag @s[scores={TDMTimer1=50..}] remove Charging
tag @s[scores={TDMTimer1=50..}] remove Targeting
execute if score @s TDMTimer1 matches 50.. run tag @p remove Target
execute if score @s TDMTimer1 matches 50.. run function animated_java:ravaged_mind/animations/idle01/tween {to_frame:0,duration:10}
execute if score @s TDMTimer1 matches 50.. on vehicle run data merge entity @s {NoAI:0}
tag @s[scores={TDMTimer1=50..}] add Idle
tag @s[scores={TDMTimer1=50..}] add TDMTimer2
tag @s[scores={TDMTimer1=50..}] remove TDMTimer1

#Reset charge cooldown
tag @s[scores={TDMTimer2=30..}] remove TDMTimer2

#Reset charge damage cooldown
tag @p[scores={TDMTimer1=10..}] remove TDMTimer1

#Death
execute unless entity @s[tag=Dead] on vehicle if entity @s[nbt=!{DeathTime:0s}] on passengers if entity @e[tag=aj.ravaged_mind.root] run function animated_java:ravaged_mind/animations/death01/tween {to_frame:0,duration:0}
execute on vehicle if entity @s[nbt=!{DeathTime:0s}] on passengers if entity @e[tag=aj.ravaged_mind.root] run tag @s[tag=!Dead] remove Walking
execute on vehicle if entity @s[nbt=!{DeathTime:0s}] on passengers if entity @e[tag=aj.ravaged_mind.root] run tag @s[tag=!Dead] remove Idle
execute on vehicle if entity @s[nbt=!{DeathTime:0s}] on passengers if entity @e[tag=aj.ravaged_mind.root] run tag @s[tag=!Dead] remove Targeting
execute on vehicle if entity @s[nbt=!{DeathTime:0s}] on passengers if entity @e[tag=aj.ravaged_mind.root] run tag @s[tag=!Dead] remove Charging
execute on vehicle if entity @s[nbt=!{DeathTime:0s}] on passengers if entity @e[tag=aj.ravaged_mind.root] run tag @s[tag=!Dead] add Dead