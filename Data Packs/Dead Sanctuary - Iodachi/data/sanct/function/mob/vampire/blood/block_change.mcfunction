execute as @e[type=minecraft:silverfish,tag=sanct.vampire,distance=..10,predicate=!sanct:mob/vampire/blood_block_changed,nbt={HurtTime:10s},limit=1] on passengers run item replace entity @s contents with minecraft:black_stained_glass
playsound minecraft:entity.evoker.hurt hostile @a[distance=..16] ~ ~ ~ 1 1.2
schedule function sanct:mob/vampire/blood/block_change_back 10
advancement revoke @s only sanct:mob/vampire/hit_blood