
execute if entity @s[advancements={sanct:death_message={husk=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," was slain by Husk",team=sl.player]
execute if entity @s[advancements={sanct:death_message={husk_summon=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," was killed by ",{"selector":"@s"}," using magic"]

execute if entity @s[advancements={sanct:death_message={zombie=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," was slain by Zombie",team=sl.player]

execute if entity @s[advancements={sanct:death_message={skeleton=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," was slain by Skeleton",team=sl.player]
execute if entity @s[advancements={sanct:death_message={skeleton_arrow=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," was shot by Skeleton",team=sl.player]
execute if entity @s[advancements={sanct:death_message={skeleton_companion=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," was slain by Beast",team=sl.player]

execute if entity @s[advancements={sanct:death_message={vampire=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," was slain by Vampire",team=sl.player]
execute if entity @s[advancements={sanct:death_message={vampire_blood=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," drowned in blood",team=sl.player]
execute if entity @s[advancements={sanct:death_message={vampire_arrow=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," was shot by Vampire using Blight",team=sl.player]
execute if entity @s[advancements={sanct:death_message={vampire_arrow_effect=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," was shot by Vampire using Blight",team=sl.player]

execute if entity @s[advancements={sanct:death_message={fall=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," hit the ground too hard",team=sl.player]
execute if entity @s[advancements={sanct:death_message={out_of_world=true}}] run tellraw @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,team=sl.player] ["",{"selector":"@s"}," fell out of the world",team=sl.player]

advancement revoke @s only sanct:death_message