execute at @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] run playsound minecraft:entity.witch.drink master @a[distance=..100,team=sl.player] ~ 63 ~ 1 1
execute at @e[type=!minecraft:player,distance=..100,tag=feelsbatman.RUCH] run particle minecraft:heart ~ ~1 ~ .4 .4 .4 0 4 force
execute if block -238 45 -3785 minecraft:emerald_block run effect give @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:instant_health 1 0 true
execute if block -238 45 -3785 minecraft:gold_block run effect give @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:instant_health 1 1 true
execute if block -238 45 -3785 minecraft:redstone_block run effect give @a[distance=..100,tag=feelsbatman.GRACZ,team=sl.player] minecraft:instant_health 1 3 true