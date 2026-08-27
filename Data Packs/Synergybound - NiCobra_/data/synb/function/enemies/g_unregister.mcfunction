##

team remove ugG.enemies
scoreboard objectives remove synb.EnemySys.MoneyWorth
scoreboard objectives remove synb.EnemySys.TimeAlive
scoreboard objectives remove synb.EnemySys.Variant

# Enemy-specific
scoreboard objectives remove synb.Enemy.GenericCharge
scoreboard objectives remove synb.Enemy.GenericCD

kill @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy_associate]