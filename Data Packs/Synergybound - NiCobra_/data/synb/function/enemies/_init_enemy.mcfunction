# As/At : new_room_enemy (tag arg)
# Args :
#   - money_worth (score arg)
##

tag @s add synb.ctx.local

summon minecraft:marker ~ ~ ~ {Tags:["synb.type.death_detector","synb.tmp.new_marker"]}
ride @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_marker,limit=1] mount @s
scoreboard players operation @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_marker] synb.EnemySys.MoneyWorth = #money_worth synb.Tmp.Arg
tag @e[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,type=minecraft:marker,tag=synb.tmp.new_marker] remove synb.tmp.new_marker

attribute @s minecraft:armor modifier add synb.m:enemy.set_zero -1 add_multiplied_total
attribute @s minecraft:armor_toughness modifier add synb.m:enemy.set_zero -1 add_multiplied_total
attribute @s minecraft:attack_damage base set 0.0
attribute @s minecraft:follow_range base set 20.0
data merge entity @s {PersistenceRequired:1b,AngerTime:100000}
data merge entity @s[tag=!synb.enemy.parasite] {NoAI:1b}

# >>> SPECIAL LOGIC : _hard_mode
execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount._hard_mode=1..}] run \
    attribute @s minecraft:max_health modifier add synb.m:enemy.hard_mode 0.3 add_multiplied_total
execute if entity @a[x=3078,y=0,z=-2554,dx=500,dy=255,dz=500,team=sl.player,tag=synb.attr.player_in_arena,tag=synb.ctx.local,scores={synb.IEItemCount._hard_mode=1..}] run \
    attribute @s minecraft:movement_speed modifier add synb.m:enemy.hard_mode 0.15 add_multiplied_total
# <<<

effect give @s[type=!#minecraft:inverted_healing_and_harm] minecraft:instant_health 5 100 true
effect give @s[type=#minecraft:inverted_healing_and_harm] minecraft:instant_damage 5 100 true