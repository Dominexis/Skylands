
execute positioned ~-1.5 ~-100 ~-1.5 as @e[tag=pc.grid,dx=2,dy=200,dz=2,type=minecraft:marker,limit=1] at @s run function pc:item/skill/warrior/yama_double/2
tag @s add pc.void
kill @s

execute unless entity @e[tag=pc.skill.yama_double,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run function pc:sys/combat/turn/end_act

# fx
playsound minecraft:entity.wither.hurt master @a ~ ~1024 ~ 0 0 0.4
playsound minecraft:item.totem.use master @a ~ ~1024 ~ 0 0.75 0.2

particle minecraft:squid_ink ~2.0 ~ ~0.0 0 0.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~0.618 0 0.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~1.176 0 1.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~1.618 0 1.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~1.902 0 2.0 0 0.1 0 force
particle minecraft:squid_ink ~0.0 ~ ~2.0 0 2.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~1.902 0 3.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~1.618 0 3.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~1.176 0 4.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~0.618 0 4.5 0 0.1 0 force
particle minecraft:squid_ink ~-2.0 ~ ~0.0 0 5.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~-0.618 0 5.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~-1.176 0 6.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~-1.618 0 6.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~-1.902 0 7.0 0 0.1 0 force
particle minecraft:squid_ink ~-0.0 ~ ~-2.0 0 7.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~-1.902 0 8.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~-1.618 0 8.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~-1.176 0 9.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~-0.618 0 9.5 0 0.1 0 force
particle minecraft:squid_ink ~2.0 ~ ~-0.0 0 10.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~0.618 0 10.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~1.176 0 11.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~1.618 0 11.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~1.902 0 12.0 0 0.1 0 force
particle minecraft:squid_ink ~0.0 ~ ~2.0 0 12.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~1.902 0 13.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~1.618 0 13.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~1.176 0 14.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~0.618 0 14.5 0 0.1 0 force
particle minecraft:squid_ink ~-2.0 ~ ~0.0 0 15.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~-0.618 0 15.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~-1.176 0 16.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~-1.618 0 16.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~-1.902 0 17.0 0 0.1 0 force
particle minecraft:squid_ink ~-0.0 ~ ~-2.0 0 17.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~-1.902 0 18.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~-1.618 0 18.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~-1.176 0 19.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~-0.618 0 19.5 0 0.1 0 force
particle minecraft:squid_ink ~2.0 ~ ~-0.0 0 20.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~0.618 0 20.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~1.176 0 21.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~1.618 0 21.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~1.902 0 22.0 0 0.1 0 force
particle minecraft:squid_ink ~0.0 ~ ~2.0 0 22.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~1.902 0 23.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~1.618 0 23.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~1.176 0 24.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~0.618 0 24.5 0 0.1 0 force
particle minecraft:squid_ink ~-2.0 ~ ~0.0 0 25.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~-0.618 0 25.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~-1.176 0 26.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~-1.618 0 26.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~-1.902 0 27.0 0 0.1 0 force
particle minecraft:squid_ink ~0.0 ~ ~-2.0 0 27.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~-1.902 0 28.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~-1.618 0 28.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~-1.176 0 29.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~-0.618 0 29.5 0 0.1 0 force

particle minecraft:squid_ink ~-2.0 ~ ~0.0 0 0.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~-0.618 0 0.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~-1.176 0 1.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~-1.618 0 1.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~-1.902 0 2.0 0 0.1 0 force
particle minecraft:squid_ink ~-0.0 ~ ~-2.0 0 2.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~-1.902 0 3.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~-1.618 0 3.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~-1.176 0 4.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~-0.618 0 4.5 0 0.1 0 force
particle minecraft:squid_ink ~2.0 ~ ~-0.0 0 5.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~0.618 0 5.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~1.176 0 6.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~1.618 0 6.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~1.902 0 7.0 0 0.1 0 force
particle minecraft:squid_ink ~0.0 ~ ~2.0 0 7.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~1.902 0 8.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~1.618 0 8.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~1.176 0 9.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~0.618 0 9.5 0 0.1 0 force
particle minecraft:squid_ink ~-2.0 ~ ~0.0 0 10.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~-0.618 0 10.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~-1.176 0 11.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~-1.618 0 11.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~-1.902 0 12.0 0 0.1 0 force
particle minecraft:squid_ink ~-0.0 ~ ~-2.0 0 12.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~-1.902 0 13.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~-1.618 0 13.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~-1.176 0 14.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~-0.618 0 14.5 0 0.1 0 force
particle minecraft:squid_ink ~2.0 ~ ~-0.0 0 15.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~0.618 0 15.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~1.176 0 16.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~1.618 0 16.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~1.902 0 17.0 0 0.1 0 force
particle minecraft:squid_ink ~0.0 ~ ~2.0 0 17.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~1.902 0 18.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~1.618 0 18.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~1.176 0 19.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~0.618 0 19.5 0 0.1 0 force
particle minecraft:squid_ink ~-2.0 ~ ~0.0 0 20.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~-0.618 0 20.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~-1.176 0 21.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~-1.618 0 21.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~-1.902 0 22.0 0 0.1 0 force
particle minecraft:squid_ink ~0.0 ~ ~-2.0 0 22.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~-1.902 0 23.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~-1.618 0 23.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~-1.176 0 24.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~-0.618 0 24.5 0 0.1 0 force
particle minecraft:squid_ink ~2.0 ~ ~-0.0 0 25.0 0 0.1 0 force
particle minecraft:squid_ink ~1.902 ~ ~0.618 0 25.5 0 0.1 0 force
particle minecraft:squid_ink ~1.618 ~ ~1.176 0 26.0 0 0.1 0 force
particle minecraft:squid_ink ~1.176 ~ ~1.618 0 26.5 0 0.1 0 force
particle minecraft:squid_ink ~0.618 ~ ~1.902 0 27.0 0 0.1 0 force
particle minecraft:squid_ink ~-0.0 ~ ~2.0 0 27.5 0 0.1 0 force
particle minecraft:squid_ink ~-0.618 ~ ~1.902 0 28.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.176 ~ ~1.618 0 28.5 0 0.1 0 force
particle minecraft:squid_ink ~-1.618 ~ ~1.176 0 29.0 0 0.1 0 force
particle minecraft:squid_ink ~-1.902 ~ ~0.618 0 29.5 0 0.1 0 force

particle lava ~ ~ ~ 0.3 0 0.3 0 20 force