execute if entity @s[advancements={sanct:altar/remove={interact=true}}] as @e[x=-2319,y=62,z=2318,dx=1,dz=1,type=minecraft:interaction,tag=sanct.altar] if data entity @s interaction at @s run function sanct:plot/altar/remove_apply

execute if entity @s[advancements={sanct:altar/remove={attack=true}}] as @e[x=-2319,y=62,z=2318,dx=1,dz=1,type=minecraft:interaction,tag=sanct.altar] if data entity @s attack at @s run function sanct:plot/altar/remove_apply

advancement revoke @s only sanct:altar/remove