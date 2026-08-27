execute if entity @s[advancements={sanct:mob/vampire/arrow_hit={arrow_full=true}}] run function sanct:mob/vampire/vulnerable/arrow_hit_apply with storage sanct:storage root.summon.vampire.arrow
execute if entity @s[advancements={sanct:mob/vampire/arrow_hit={arrow_blocked=true}}] run damage @s 4 minecraft:cactus
advancement revoke @s only sanct:mob/vampire/arrow_hit