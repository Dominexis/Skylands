bossbar add feelsbatman.wave {"text":"WAVE"}
team remove feelsbatman.ENEMY
scoreboard objectives remove feelsbatman.WAVE
scoreboard objectives remove feelsbatman.WAVE1
scoreboard objectives remove feelsbatman.WAVE2
scoreboard objectives remove feelsbatman.ROT
scoreboard objectives remove feelsbatman.SUMMON
scoreboard objectives remove feelsbatman.ROLL
scoreboard objectives remove feelsbatman.HURT
scoreboard objectives remove feelsbatman.ATAK
scoreboard objectives remove feelsbatman.ATAK1
scoreboard objectives remove feelsbatman.ZDOL1
scoreboard objectives remove feelsbatman.ZDOL2
scoreboard objectives remove feelsbatman.HEALTH
execute positioned -256 43 -3795 run kill @e[type=!player,distance=..100,tag=feelsbatman.CAM]
execute positioned -256 43 -3795 run kill @e[type=!player,distance=..100,tag=feelsbatman.MARKER]
execute positioned -256 43 -3795 run kill @e[type=!player,distance=..100,tag=feelsbatman.RUCH]
execute positioned -256 43 -3795 run kill @e[type=!player,distance=..100,tag=feelsbatman.ENEMY]
execute positioned -256 43 -3795 run kill @e[type=!player,distance=..100,tag=feelsbatman.AREA]
execute positioned -256 43 -3795 run kill @e[type=!player,distance=..100,tag=feelsbatman.BULLET]
execute positioned -256 43 -3795 run kill @e[type=!player,distance=..100,tag=feelsbatman.UPGRADE]
execute positioned -256 43 -3795 run kill @e[type=!player,distance=..100,tag=feelsbatman.STOPMOVE]
execute positioned -256 43 -3795 run kill @e[distance=..100,type=item]