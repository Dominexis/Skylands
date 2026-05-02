scoreboard players set @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] celpel.vaporizing_particles 0
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] positioned -1788 246 -6405 run playsound block.copper.break block @s ~ ~ ~
execute as @a[x=-1775,y=226,z=-6376,distance=..250,team=sl.player] positioned -1788 246 -6405 run playsound block.fire.extinguish block @s ~ ~ ~
setblock -1788 246 -6405 air
particle block{block_state:{Name:waxed_oxidized_chiseled_copper}} -1788 246.5 -6405 0.3 0.3 0.3 1 60
particle block{block_state:{Name:redstone_block}} -1788 246.5 -6405 0.15 0.15 0.15 1 5
particle block{block_state:{Name:repeater}} -1788 246.5 -6405 0.15 0.15 0.15 1 5
particle large_smoke -1788 246.5 -6405 0.3 0.3 0.3 0.05 5
particle smoke -1788 246.5 -6405 0.3 0.3 0.3 0.05 10