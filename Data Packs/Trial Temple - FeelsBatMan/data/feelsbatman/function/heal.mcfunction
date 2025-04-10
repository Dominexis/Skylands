execute at @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] run playsound minecraft:entity.witch.drink master @a[team=sl.player,distance=..100] ~ 63 ~ 1 1
execute at @e[type=!player,distance=..100,tag=feelsbatman.RUCH] run particle heart ~ ~1 ~ .4 .4 .4 0 4 force
execute if block -238 45 -3785 emerald_block run effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 0 true
execute if block -238 45 -3785 gold_block run effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 1 true
execute if block -238 45 -3785 redstone_block run effect give @a[team=sl.player,distance=..100,tag=feelsbatman.GRACZ] instant_health 1 3 true