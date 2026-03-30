# As/At : crawler_egg (enemy_associate)
##

tag @e[type=minecraft:slime,tag=synb.enemy.egg,distance=..0.6,sort=nearest,limit=1] add synb.tmp.hitbox

scoreboard players set #frozen synb.Tmp.Expr 0
execute if entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox,tag=synb.status.frozen] run scoreboard players set #frozen synb.Tmp.Expr 1
execute if score #frozen synb.Tmp.Expr matches 1 run scoreboard players add @s synb.Enemy.GenericCD 1
execute if score #frozen synb.Tmp.Expr matches 1 run tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] remove synb.tmp.hitbox
execute if score #frozen synb.Tmp.Expr matches 1 run return 0

scoreboard players set #unset_cd synb.Tmp.Expr 0
execute unless score @s synb.Enemy.GenericCD matches 0.. run scoreboard players set #unset_cd synb.Tmp.Expr 1
execute if score #unset_cd synb.Tmp.Expr matches 1 run scoreboard players set @s synb.Enemy.GenericCD 470
execute if score #unset_cd synb.Tmp.Expr matches 1 at @a[team=sl.player,tag=synb.attr.player_in_arena,distance=..40] run scoreboard players remove @s synb.Enemy.GenericCD 50
# Why would you even play with 8 players ?
execute if score #unset_cd synb.Tmp.Expr matches 1 if score @s synb.Enemy.GenericCD matches ..79 run scoreboard players set @s synb.Enemy.GenericCD 80

scoreboard players operation #crack synb.Tmp.Expr = @s synb.Enemy.GenericCD
execute if score @s synb.Enemy.GenericCD matches 81.. run scoreboard players operation #crack synb.Tmp.Expr %= num60 synb.Const
execute if score @s synb.Enemy.GenericCD matches ..80 run scoreboard players operation #crack synb.Tmp.Expr %= num15 synb.Const

execute if score #crack synb.Tmp.Expr matches 0 at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] run particle minecraft:block{block_state:"minecraft:dragon_egg"} ~ ~0.2 ~ 0.3 0.2 0.3 0.2 5
execute if score #crack synb.Tmp.Expr matches 0 at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] run playsound minecraft:entity.turtle.egg_crack hostile @a ~ ~ ~ 2
execute if score #crack synb.Tmp.Expr matches 0 run tp @s ~-0.1 ~ ~
execute if score #crack synb.Tmp.Expr matches 1 run tp @s ~0.2 ~ ~
execute if score #crack synb.Tmp.Expr matches 2 run tp @s ~-0.1 ~ ~
execute if score @s synb.Enemy.GenericCD matches ..40 if score t2 synb.TickCycle matches 1 at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] run particle minecraft:dust{color:[0.0,0.0,0.0],scale:2} ~ ~0.3 ~ 0.5 0.5 0.5 0.1 2

# Countdown end
scoreboard players operation #lvl synb.Tmp.Expr = @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox,limit=1] synb.EnemySys.Variant
execute if score @s synb.Enemy.GenericCD matches 0 at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] positioned ~ ~ ~ run function synb:enemies/spawn_enemies {class:parasite,variant:1}
execute if score @s synb.Enemy.GenericCD matches 0 if score #lvl synb.Tmp.Expr matches 2.. at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] positioned ~-0.2 ~ ~-0.2 run function synb:enemies/spawn_enemies {class:parasite,variant:1}
execute if score @s synb.Enemy.GenericCD matches 0 if score #lvl synb.Tmp.Expr matches 2.. at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] positioned ~0.2 ~ ~0.2 run function synb:enemies/spawn_enemies {class:parasite,variant:1}
execute if score @s synb.Enemy.GenericCD matches 0 if score #lvl synb.Tmp.Expr matches 3.. at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] positioned ~0.2 ~ ~-0.2 run function synb:enemies/spawn_enemies {class:parasite,variant:1}
execute if score @s synb.Enemy.GenericCD matches 0 if score #lvl synb.Tmp.Expr matches 3.. at @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] positioned ~-0.2 ~ ~0.2 run function synb:enemies/spawn_enemies {class:parasite,variant:1}

execute if score @s synb.Enemy.GenericCD matches 0 run tp @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] ~ -500 ~
execute unless entity @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] run kill @s

tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:slime,tag=synb.tmp.hitbox] remove synb.tmp.hitbox