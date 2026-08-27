#Rotate Model to correspond to Mob
execute on vehicle rotated as @s on passengers if entity @e[tag=aj.spite.root,tag=!PreparingFireball] run rotate @s ~ 0

#Detect when the Vex entity charges
execute as @e[tag=Spite] store result score @s MotionX run data get entity @s Motion[0] 10000
execute as @e[tag=Spite] store result score @s MotionY run data get entity @s Motion[1] 10000
execute as @e[tag=Spite] store result score @s MotionZ run data get entity @s Motion[2] 10000

execute as @e[tag=Spite] if entity @s[scores={MotionX=..1699}] run tag @e[tag=aj.spite.root] add StopCharge1
execute as @e[tag=Spite] if entity @s[scores={MotionY=..1699}] run tag @e[tag=aj.spite.root] add StopCharge2
execute as @e[tag=Spite] if entity @s[scores={MotionZ=..1699}] run tag @e[tag=aj.spite.root] add StopCharge3
execute as @e[tag=Spite] if entity @s[scores={MotionX=-1699..}] run tag @e[tag=aj.spite.root] add StopCharge4
execute as @e[tag=Spite] if entity @s[scores={MotionY=-1699..}] run tag @e[tag=aj.spite.root] add StopCharge5
execute as @e[tag=Spite] if entity @s[scores={MotionZ=-1699..}] run tag @e[tag=aj.spite.root] add StopCharge6

tag @s[tag=StopCharge1,tag=StopCharge2,tag=StopCharge3,tag=StopCharge4,tag=StopCharge5,tag=StopCharge6] add StopCharge
tag @s[tag=StopCharge1,tag=StopCharge2,tag=StopCharge3,tag=StopCharge4,tag=StopCharge5,tag=StopCharge6] remove Charge
tag @s[tag=StopCharge1,tag=StopCharge2,tag=StopCharge3,tag=StopCharge4,tag=StopCharge5,tag=StopCharge6] remove Charging

execute as @e[tag=Spite] if entity @s[scores={MotionX=1700..}] run tag @e[tag=aj.spite.root] add Charge
execute as @e[tag=Spite] if entity @s[scores={MotionY=1700..}] run tag @e[tag=aj.spite.root] add Charge
execute as @e[tag=Spite] if entity @s[scores={MotionZ=1700..}] run tag @e[tag=aj.spite.root] add Charge
execute as @e[tag=Spite] if entity @s[scores={MotionX=..-1700}] run tag @e[tag=aj.spite.root] add Charge
execute as @e[tag=Spite] if entity @s[scores={MotionY=..-1700}] run tag @e[tag=aj.spite.root] add Charge
execute as @e[tag=Spite] if entity @s[scores={MotionZ=..-1700}] run tag @e[tag=aj.spite.root] add Charge

tag @s[tag=Charge] remove StopCharge1
tag @s[tag=Charge] remove StopCharge2
tag @s[tag=Charge] remove StopCharge3
tag @s[tag=Charge] remove StopCharge4
tag @s[tag=Charge] remove StopCharge5
tag @s[tag=Charge] remove StopCharge6
tag @s[tag=Charge] remove StopCharge
tag @s[tag=Charge] remove NotCharging

execute if entity @s[tag=Charge,tag=!Charging] run function animated_java:spite/animations/chargingstart01/tween {to_frame:0,duration:0}
tag @s[tag=Charge,tag=!Charging] add Charging

execute if entity @s[tag=StopCharge,tag=!NotCharging] run function animated_java:spite/animations/idle01/tween {to_frame:0,duration:5}
tag @s[tag=StopCharge,tag=!NotCharging] add NotCharging

#Fireballs Attack
execute if entity @s[tag=!Fireballing,tag=PreparingFireball] run function the_darkest_mansion:smooth_rotation_facing_entity {entity:"@p",y_translation:0,smoothing:16,y_rotation:"~",x_rotation:0}
execute if entity @s[tag=Fireballing] facing entity @p feet run rotate @s ~ 0
execute if entity @s[tag=Fireballing] run function animated_java:spite/at_locator {name:"fireballspawn",command:"particle flame ~ ~ ~ 0.075 0.075 0.075 0.008 1 force"}
execute if entity @s[tag=Fireballing] run function animated_java:spite/at_locator {name:"fireballspawn",command:"particle smoke ~ ~ ~ 0.075 0.075 0.075 0.008 1 force"}
execute as @e[tag=SpiteFB,tag=!Fired] store result score @s MotionX run data get entity @s Pos[0] 100000
execute as @e[tag=SpiteFB,tag=!Fired] store result score @s MotionY run data get entity @s Pos[1] 100000
execute as @e[tag=SpiteFB,tag=!Fired] store result score @s MotionZ run data get entity @s Pos[2] 100000
execute as @e[tag=Aim] store result score @s MotionX run data get entity @s Pos[0] 100000
execute as @e[tag=Aim] store result score @s MotionY run data get entity @s Pos[1] 100000
execute as @e[tag=Aim] store result score @s MotionZ run data get entity @s Pos[2] 100000
scoreboard players operation @e[tag=SpiteFB,tag=!Fired] MotionX -= @e[tag=Aim] MotionX
scoreboard players operation @e[tag=SpiteFB,tag=!Fired] MotionY -= @e[tag=Aim] MotionY
scoreboard players operation @e[tag=SpiteFB,tag=!Fired] MotionZ -= @e[tag=Aim] MotionZ
execute as @e[tag=SpiteFB,tag=!Fired] store result entity @s Motion[0] double 0.00001 run scoreboard players get @s MotionX
execute as @e[tag=SpiteFB,tag=!Fired] store result entity @s Motion[1] double 0.00001 run scoreboard players get @s MotionY
execute as @e[tag=SpiteFB,tag=!Fired] store result entity @s Motion[2] double 0.00001 run scoreboard players get @s MotionZ
tag @e[tag=SpiteFB,tag=!Fired] add Fired
kill @e[tag=Aim]

#Damaged Tint and Sound
execute unless entity @s[tag=Dead] if entity @s[scores={TDMHurtTime=0},tag=NotCharging] run function animated_java:spite/variants/default/apply
execute unless entity @s[tag=Dead] if entity @s[scores={TDMHurtTime=0},tag=Charging] run function animated_java:spite/variants/charging/apply
execute as @e[tag=SpiteHitbox] on attacker as @e[tag=aj.spite.root,scores={TDMHurtTime=0}] run scoreboard players set @s TDMHurtTime 8
execute as @e[tag=SpiteHitbox] on attacker as @e[tag=aj.spite.root,scores={TDMHurtTime=8}] run function animated_java:spite/variants/damaged/apply
execute as @e[tag=SpiteHitbox] on attacker if entity @e[tag=aj.spite.root,scores={TDMHurtTime=8}] run scoreboard players remove @e[tag=SpiteHitbox] SpiteHealth 6
execute as @e[tag=SpiteHitbox] on attacker at @e[tag=aj.spite.root,scores={TDMHurtTime=8}] run playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.5
execute as @e[tag=SpiteHitbox] on attacker at @e[tag=aj.spite.root,scores={TDMHurtTime=8}] run particle minecraft:damage_indicator ~ ~ ~ 0.25 0.25 0.25 0.008 3
execute as @e[tag=SpiteHitbox] on attacker at @e[tag=aj.spite.root,scores={TDMHurtTime=8}] run playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 1 1

#Death
execute if entity @e[tag=SpiteHitbox,scores={SpiteHealth=..0}] run kill @e[tag=Spite]
execute unless entity @s[tag=Dead] on vehicle if entity @s[nbt=!{DeathTime:0s}] on passengers if entity @e[tag=aj.spite.root] run function animated_java:spite/animations/death01/tween {to_frame:0,duration:0}
execute unless entity @s[tag=Dead] on vehicle if entity @s[nbt=!{DeathTime:0s}] run kill @e[tag=SpiteHitbox]
execute on vehicle if entity @s[nbt=!{DeathTime:0s}] on passengers if entity @e[tag=aj.spite.root] run tag @s[tag=!Dead] add Dead

#Boss Bar
execute store result bossbar the_darkest_mansion:spite value run scoreboard players get @e[tag=SpiteHitbox,limit=1] SpiteHealth