scoreboard players set @s synb.Item.punishing_eye.noloop 1
execute as @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=!minecraft:player,tag=synb.type.enemy,tag=synb.ctx.local,scores={synb.Item.punishing_eye.hurt_count=1..}] run \
    function synb:all_items/punishing_eye/_hurt_back
scoreboard players set @s synb.Item.punishing_eye.noloop 0