
summon minecraft:zombie ~ ~ ~ {Tags:["pc.summon"],attributes:[{id:"minecraft:scale",base:0.75}],equipment:{mainhand:{id:"minecraft:wooden_sword",count:1},feet:{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":2842111,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:sentry"}},count:1},head:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWM4MjdmOGI3ODlhMWFjMzNiZDIwMjIyMWFhN2JjM2YzNzlmZDhmMzJkNzY5YjA4ZWI4ZmI2MDBmMDQ2MGJjIn19fQ=="}]}},count:1}}}

data modify storage pc:temp summon set value {id:"zombie_agile",team:'enemy',hpmax:16}
execute as @e[tag=pc.summon,type=minecraft:zombie,limit=1] at @s run function sys:entity/summon