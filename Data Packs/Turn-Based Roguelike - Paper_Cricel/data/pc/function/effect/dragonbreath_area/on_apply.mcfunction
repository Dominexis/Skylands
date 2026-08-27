
data modify storage pc:utils local_thread[0].extra set value [{id:"dragonbreath_area/mark"}]
execute positioned ~-1.5 ~-100 ~-1.5 unless entity @e[tag=pc.effect.dragonbreath_area,type=marker,dx=2,dy=200,dz=2,limit=1] at @s run function pc:effect/dragonbreath_area/fx/summon