
# effect
summon zombie ~ ~ ~ {Tags:["pc.summon","pc.object.mob"],attributes:[{id:scale,base:0.75}],equipment:{mainhand:{id:"minecraft:wooden_sword",count:1},feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":2842111,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:sentry"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWM4MjdmOGI3ODlhMWFjMzNiZDIwMjIyMWFhN2JjM2YzNzlmZDhmMzJkNzY5YjA4ZWI4ZmI2MDBmMDQ2MGJjIn19fQ=="}]}}}}}

    # Attribute
data modify storage pc:temp summon set value {id:'agile_zombie',hp:140,hpmax:140}
execute as @n[type=zombie,tag=pc.summon,distance=..100] at @s run function pc:sys/object/summon/use