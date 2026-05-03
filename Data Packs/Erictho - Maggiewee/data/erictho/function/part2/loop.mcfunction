#to end loop run: scoreboard players set player erictho_endloop 2
#loop during part2

#soul particles
execute at @a[team=sl.player,distance=..100] run particle minecraft:sculk_soul ~ ~1.5 ~ 0.2 0.2 0.2 0.06 7 normal

#block damage/health
execute at @a[tag=!erictho.blackstone,team=sl.player,distance=..100] if block ~ ~-1 ~ minecraft:chiseled_polished_blackstone as @a[tag=!erictho.blackstone,team=sl.player,distance=..100] run function erictho:part2/blackstone

execute at @a[tag=!erictho.nether,team=sl.player,distance=..100] if block ~ ~-1 ~ minecraft:chiseled_nether_bricks as @a[tag=!erictho.nether,team=sl.player,distance=..100] run function erictho:part2/nether

execute at @a[tag=!erictho.resin,team=sl.player,distance=..100] if block ~ ~-1 ~ minecraft:chiseled_resin_bricks as @a[tag=!erictho.resin,team=sl.player,distance=..100] run function erictho:part2/resin

execute at @a[tag=!erictho.gilded,team=sl.player,distance=..100] if block ~ ~-1 ~ minecraft:gilded_blackstone as @a[tag=!erictho.gilded,team=sl.player,distance=..100] run function erictho:part2/gilded

execute at @a[tag=!erictho.shroom,team=sl.player,distance=..100] if block ~ ~-1 ~ minecraft:shroomlight as @a[tag=!erictho.shroom,team=sl.player,distance=..100] run function erictho:part2/shroom

#loop again
execute unless score erictho.player erictho.endloop matches 1 run schedule function erictho:part2/loop 1s

