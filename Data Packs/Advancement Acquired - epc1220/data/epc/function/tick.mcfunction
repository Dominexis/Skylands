## WOOL REPLACERS
execute at @e[type=marker,tag=CENTER] as @e[type=item,distance=..256] if entity @s[nbt={Item:{id:"minecraft:red_wool"}}] run data merge entity @s {Item: {components:{"minecraft:can_place_on": {blocks:["minecraft:bone_block"]}}}}
execute at @e[type=marker,tag=CENTER] as @e[type=item,distance=..256] if entity @s[nbt={Item:{id:"minecraft:orange_wool"}}] run data merge entity @s {Item: {components:{"minecraft:can_place_on": {blocks:["minecraft:bone_block"]}}}}
execute at @e[type=marker,tag=CENTER] as @e[type=item,distance=..256] if entity @s[nbt={Item:{id:"minecraft:yellow_wool"}}] run data merge entity @s {Item: {components:{"minecraft:can_place_on": {blocks:["minecraft:bone_block"]}}}}
execute at @e[type=marker,tag=CENTER] as @e[type=item,distance=..256] if entity @s[nbt={Item:{id:"minecraft:lime_wool"}}] run data merge entity @s {Item: {components:{"minecraft:can_place_on": {blocks:["minecraft:bone_block"]}}}}
execute at @e[type=marker,tag=CENTER] as @e[type=item,distance=..256] if entity @s[nbt={Item:{id:"minecraft:blue_wool"}}] run data merge entity @s {Item: {components:{"minecraft:can_place_on": {blocks:["minecraft:bone_block"]}}}}
execute at @e[type=marker,tag=CENTER] as @e[type=item,distance=..256] if entity @s[nbt={Item:{id:"minecraft:purple_wool"}}] run data merge entity @s {Item: {components:{"minecraft:can_place_on": {blocks:["minecraft:bone_block"]}}}}

## LAUNCH PADS
execute as @e[tag=f1] at @s if entity @s[y=64,distance=..0.625] run kill @s
execute at @e[tag=ENTER,tag=active] run function epc:launch_pedestal/particle
execute at @e[tag=LEAVE,tag=active] run function epc:launch_pedestal/particle

execute as @a at @s if entity @s[y=10,dy=1] run tp @s @n[tag=checkpoint, type=armor_stand]
execute at @e[type=marker,tag=ISLE6] if entity @a[distance=..32] at @e[tag=B3a] run setblock ~ ~ ~ minecraft:air 

## NETHER PORTAL
execute at @n[tag=ISLE4] positioned ~-7 ~-34 ~-4 as @a if entity @s[dy=3,dz=2] at @s run tp @s ~99 ~4 ~18 ~ ~
execute at @n[tag=ISLE5] positioned ~-4.5 ~-30 ~-6 as @a if entity @s[dy=3,dz=2] at @s run tp @s ~-99 ~-4 ~-18 ~ ~

## RESET LEVEL
execute as @a if score @s resetlevel matches 1 run function epc:get_level {function:"reset"}
scoreboard players reset @a resetlevel
scoreboard players enable @a resetlevel

## EFFECTS
execute as @a at @s if score @s effects matches 1 run function epc:effects
scoreboard players reset @a effects
scoreboard players enable @a effects
effect clear @a minecraft:poison

## ISLE 1 CROPS
execute at @n[tag=ISLE1] positioned ~-7 ~-3 ~7 unless blocks ~ ~ ~ ~8 ~1 ~4 ~ ~3 ~ all run kill @e[type=item,limit=5,sort=nearest]
execute at @n[tag=ISLE1] positioned ~-7 ~-3 ~7 unless blocks ~ ~ ~ ~8 ~1 ~4 ~ ~3 ~ all run clone ~ ~ ~ ~8 ~1 ~4 ~ ~3 ~

## PROGRESS BARS
execute at @e[type=marker,tag=CENTER] run bossbar set minecraft:overall players @a[distance=..32]
execute at @e[type=marker,tag=ISLE1] run bossbar set minecraft:isle1 players @a[distance=..42]
execute at @e[type=marker,tag=ISLE2] run bossbar set minecraft:isle2 players @a[distance=..24]
execute at @e[type=marker,tag=ISLE3] run bossbar set minecraft:isle3 players @a[distance=..24]
execute at @e[type=marker,tag=ISLE4] positioned ~ ~-3 ~ run bossbar set minecraft:isle4 players @a[distance=..45]
execute at @e[type=marker,tag=ISLE5] positioned ~ ~15 ~ run tag @a[distance=30..48] add 5a
execute at @e[type=marker,tag=ISLE5] positioned ~ ~15 ~ run tag @a[distance=48..] remove 5a
execute at @e[type=marker,tag=ISLE5] positioned ~ ~15 ~ run tag @a[distance=..30] remove 5a
execute as @a[tag=5a] at @a if entity @s[y=60, dy=60] run tag @s remove 5a
execute at @e[type=marker,tag=ISLE5] positioned ~ ~15 ~ run bossbar set minecraft:isle5a players @a[tag=5a]
execute at @e[type=marker,tag=ISLE5] positioned ~ ~15 ~ run bossbar set minecraft:isle5b players @a[distance=..30]

## LEVEL ACTIVATION
execute at @e[tag=l1,tag=ORIGIN,tag=active] if entity @p[distance=..5,tag=limbo] run function epc:l1/level_on
execute at @e[tag=l2,tag=ORIGIN,tag=active] if entity @p[distance=..5,tag=limbo] run function epc:l2/level_on
execute at @e[tag=l3,tag=ORIGIN,tag=active] if entity @p[distance=..5,tag=limbo] run function epc:l3/level_on
execute at @e[tag=l4,tag=ORIGIN,tag=active] if entity @p[distance=..5,tag=limbo] run function epc:l4/level_on
execute at @e[tag=l5,tag=ORIGIN,tag=active] if entity @p[distance=..5,tag=limbo] run function epc:l5/level_on
execute at @e[tag=l6,tag=ORIGIN,tag=active] if entity @p[distance=..5,tag=limbo] run function epc:l6/level_on
execute at @e[tag=l7,tag=ORIGIN,tag=active] if entity @p[distance=..5,tag=limbo] run function epc:l7/level_on
execute at @e[tag=l8,tag=ORIGIN,tag=active] if entity @p[distance=..5,tag=limbo] run function epc:l8/level_on
execute at @e[tag=l9,tag=ORIGIN,tag=active] if entity @p[distance=..5,tag=limbo] run function epc:l9/level_on

## ON NOTEBLOCK CLICK
# tutorial
execute at @e[tag=l0,tag=nb0] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:0,color:"red",sound:"minecraft:entity.enderman.scream",level:"l0"}
execute at @e[tag=l0,tag=nb1] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:1,color:"orange",sound:"minecraft:entity.donkey.ambient",level:"l0"}
execute at @e[tag=l0,tag=nb2] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:2,color:"yellow",sound:"minecraft:entity.shulker.ambient",level:"l0"}
execute at @e[tag=l0,tag=nb3] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:3,color:"lime",sound:"minecraft:entity.creeper.primed",level:"l0"}

# level 1
execute at @e[tag=l1,tag=nb0] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:0,color:"red",sound:"minecraft:entity.villager.ambient",level:"l1"}
execute at @e[tag=l1,tag=nb1] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:1,color:"orange",sound:"minecraft:entity.iron_golem.hurt",level:"l1"}
execute at @e[tag=l1,tag=nb2] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:2,color:"yellow",sound:"minecraft:entity.horse.ambient",level:"l1"}
execute at @e[tag=l1,tag=nb3] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:3,color:"lime",sound:"minecraft:entity.cat.ambient",level:"l1"}
execute at @e[tag=l1,tag=nb4] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:4,color:"blue",sound:"minecraft:entity.zombie_villager.ambient",level:"l1"}

# level 2
execute at @e[tag=l2,tag=nb0] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:0,color:"red",sound:"minecraft:entity.chicken.egg",level:"l2"}
execute at @e[tag=l2,tag=nb1] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:1,color:"orange",sound:"minecraft:entity.sheep.ambient",level:"l2"}
execute at @e[tag=l2,tag=nb2] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:2,color:"yellow",sound:"minecraft:entity.pig.ambient",level:"l2"}
execute at @e[tag=l2,tag=nb3] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:3,color:"lime",sound:"minecraft:entity.bee.hurt",level:"l2"}
execute at @e[tag=l2,tag=nb4] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:4,color:"blue",sound:"minecraft:entity.cow.ambient",level:"l2"}

# level 3
execute at @e[tag=l3,tag=nb0] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:0,color:"red",sound:"minecraft:entity.vindicator.ambient",level:"l3"}
execute at @e[tag=l3,tag=nb1] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:1,color:"orange",sound:"minecraft:entity.vex.ambient",level:"l3"}
execute at @e[tag=l3,tag=nb2] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:2,color:"yellow",sound:"minecraft:entity.evoker.cast_spell",level:"l3"}
execute at @e[tag=l3,tag=nb3] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:3,color:"lime",sound:"minecraft:entity.ravager.ambient",level:"l3"}

# level 4
execute at @e[tag=l4,tag=nb0] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:0,color:"red",sound:"minecraft:entity.goat.screaming.ambient",level:"l4"}
execute at @e[tag=l4,tag=nb1] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:1,color:"orange",sound:"minecraft:entity.stray.ambient",level:"l4"}
execute at @e[tag=l4,tag=nb2] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:2,color:"yellow",sound:"minecraft:entity.polar_bear.ambient",level:"l4"}
execute at @e[tag=l4,tag=nb3] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:3,color:"lime",sound:"minecraft:entity.frog.ambient",level:"l4"}
execute at @e[tag=l4,tag=nb4] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:4,color:"blue",sound:"minecraft:entity.snow_golem.shoot",level:"l4"}
execute at @e[tag=l4,tag=nb5] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:5,color:"purple",sound:"minecraft:entity.fox.ambient",level:"l4"}

# level 5
execute at @e[tag=l5,tag=nb0] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:0,color:"red",sound:"minecraft:entity.camel.ambient",level:"l5"}
execute at @e[tag=l5,tag=nb1] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:1,color:"orange",sound:"minecraft:entity.wolf.ambient",level:"l5"}
execute at @e[tag=l5,tag=nb2] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:2,color:"yellow",sound:"minecraft:entity.llama.ambient",level:"l5"}
execute at @e[tag=l5,tag=nb3] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:3,color:"lime",sound:"minecraft:entity.rabbit.death",level:"l5"}
execute at @e[tag=l5,tag=nb4] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:4,color:"blue",sound:"minecraft:entity.husk.ambient",level:"l5"}
execute at @e[tag=l5,tag=nb5] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:5,color:"purple",sound:"minecraft:entity.armadillo.ambient",level:"l5"}

# level 6
execute at @e[tag=l6,tag=nb0] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:0,color:"red",sound:"minecraft:entity.slime.hurt",level:"l6"}
execute at @e[tag=l6,tag=nb1] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:1,color:"orange",sound:"minecraft:entity.parrot.ambient",level:"l6"}
execute at @e[tag=l6,tag=nb2] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:2,color:"yellow",sound:"minecraft:entity.ocelot.death",level:"l6"}
execute at @e[tag=l6,tag=nb3] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:3,color:"lime",sound:"minecraft:entity.witch.ambient",level:"l6"}
execute at @e[tag=l6,tag=nb4] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:4,color:"blue",sound:"minecraft:entity.bogged.death",level:"l6"}
execute at @e[tag=l6,tag=nb5] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:5,color:"purple",sound:"minecraft:entity.panda.ambient",level:"l6"}

# level 7
execute at @e[tag=l7,tag=nb0] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:0,color:"red",sound:"minecraft:entity.creeper.primed",level:"l7"}
execute at @e[tag=l7,tag=nb1] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:1,color:"orange",sound:"minecraft:entity.zombie.ambient",level:"l7"}
execute at @e[tag=l7,tag=nb2] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:2,color:"yellow",sound:"minecraft:entity.silverfish.ambient",level:"l7"}
execute at @e[tag=l7,tag=nb3] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:3,color:"lime",sound:"minecraft:entity.skeleton.ambient",level:"l7"}
execute at @e[tag=l7,tag=nb4] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:4,color:"blue",sound:"minecraft:entity.spider.ambient",level:"l7"}
execute at @e[tag=l7,tag=nb5] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:5,color:"purple",sound:"minecraft:entity.bat.death",level:"l7"}

# level 8
execute at @e[tag=l8,tag=nb0] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:0,color:"red",sound:"minecraft:entity.strider.ambient",level:"l8"}
execute at @e[tag=l8,tag=nb1] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:1,color:"orange",sound:"minecraft:entity.piglin.celebrate",level:"l8"}
execute at @e[tag=l8,tag=nb2] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:2,color:"yellow",sound:"minecraft:entity.blaze.ambient",level:"l8"}
execute at @e[tag=l8,tag=nb3] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:3,color:"lime",sound:"minecraft:entity.zombified_piglin.ambient",level:"l8"}
execute at @e[tag=l8,tag=nb4] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:4,color:"blue",sound:"minecraft:entity.ghast.hurt",level:"l8"}
execute at @e[tag=l8,tag=nb5] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:5,color:"purple",sound:"minecraft:entity.wither_skeleton.ambient",level:"l8"}

# level 9
execute at @e[tag=l9,tag=nb0] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:0,color:"red",sound:"minecraft:entity.axolotl.death",level:"l9"}
execute at @e[tag=l9,tag=nb1] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:1,color:"orange",sound:"minecraft:entity.dolphin.ambient_water",level:"l9"}
execute at @e[tag=l9,tag=nb2] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:2,color:"yellow",sound:"minecraft:entity.puffer_fish.blow_out",level:"l9"}
execute at @e[tag=l9,tag=nb3] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:3,color:"lime",sound:"minecraft:entity.turtle.hurt",level:"l9"}
execute at @e[tag=l9,tag=nb4] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:4,color:"blue",sound:"minecraft:entity.drowned.ambient",level:"l9"}
execute at @e[tag=l9,tag=nb5] unless block ~ ~ ~ minecraft:note_block[note=0] run function epc:noteblock {num:5,color:"purple",sound:"minecraft:entity.squid.death",level:"l9"}