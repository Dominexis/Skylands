
summon minecraft:skeleton ~ ~ ~ {Tags:["pc.summon"],equipment:{mainhand:{id:"minecraft:bow"}}}

data modify storage pc:temp summon set value {id:"skeleton",team:'enemy',hpmax:28}
execute as @e[tag=pc.summon,type=skeleton,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:sys/entity/summon

## Intents
# if (ally < 7x7) : 攻擊
    # if (ally < 5x5) : 攻擊or負面效果
    # if (ally < 3x3) : 逃跑
        # if (no block to escape) : 攻擊
# else : 靠近