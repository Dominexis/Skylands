
summon minecraft:skeleton ~ ~ ~ {Tags:["pc.summon"],equipment:{head:{id:"minecraft:player_head",components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTlhNGVmYTRjZWFiNWRmMDQ0OGVlYWRkMGQ3MjUwMTE1Y2ZhMTAxZGQ2ODMyZWQ5YmZmYmU1ZjM0OTlhZWM3In19fQ=="}]}},count:1},mainhand:{id:"minecraft:crossbow"},offhand:{id:"minecraft:paper",components:{item_model:"pc:mob/skeleton_continu/dagger"}}}}

data modify storage pc:temp summon set value {id:"skeleton_continu",team:'enemy',hpmax:30}
execute as @e[tag=pc.summon,type=skeleton,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon

## Skills
# attack1 - nearest(1) + line(2) | 2*3 damage
# debuff1 - line(3)*3 | 2 Vulnerable

## Intents
# if (ally < 5x5) : attack1 * 2, debuff1 * 2
# else : attack1