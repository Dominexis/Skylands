
execute if data entity @s data{type:"spac"} run data modify entity @s data.type set value "hole"
execute positioned ~-1.5 ~-100 ~-1.5 unless entity @e[tag=pc.effect.void_area,type=item_display,dx=2,dy=200,dz=2,limit=1] at @s run function pc:effect/void_area/fx/summon