execute on vehicle unless entity @s[nbt={Health:0.0f}] run return 1

ride @s dismount
scoreboard players set @s sanct.respawn_timer 0
data merge entity @s {Invulnerable:0b,attributes:[{id:"minecraft:scale",base:1}],equipment:{mainhand:{id:"minecraft:bow"},head:{id:"minecraft:egg",components:{"minecraft:item_model":"minecraft:air"}},chest:{id:"minecraft:egg",components:{"minecraft:item_model":"minecraft:air"}}},Tags:["sanct.damage_target"]}
playsound minecraft:entity.item.break hostile @a[distance=..16] ~ ~ ~ 1 0.7