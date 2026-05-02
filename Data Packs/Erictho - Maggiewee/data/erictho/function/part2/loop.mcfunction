#to end loop run: scoreboard players set player erictho_endloop 2
#loop during part2

#soul particles
execute at @p run particle minecraft:sculk_soul ~ ~1.5 ~ 0.2 0.2 0.2 0.06 7 normal

#block damage/health
execute at @a[tag=!blackstone, team=erictho_player] if block ~ ~-1 ~ minecraft:chiseled_polished_blackstone as @a[tag=!blackstone, team=erictho_player] run function erictho:part2/blackstone

execute at @a[tag=!nether, team=erictho_player] if block ~ ~-1 ~ minecraft:chiseled_nether_bricks as @a[tag=!nether, team=erictho_player] run function erictho:part2/nether

execute at @a[tag=!resin, team=erictho_player] if block ~ ~-1 ~ minecraft:chiseled_resin_bricks as @a[tag=!resin, team=erictho_player] run function erictho:part2/resin

execute at @a[tag=!gilded, team=erictho_player] if block ~ ~-1 ~ minecraft:gilded_blackstone as @a[tag=!gilded, team=erictho_player] run function erictho:part2/gilded

execute at @a[tag=!shroom, team=erictho_player] if block ~ ~-1 ~ minecraft:shroomlight as @a[tag=!shroom, team=erictho_player] run function erictho:part2/shroom

#loop again
execute unless score player erictho_endloop matches 1 run schedule function erictho:part2/loop 1s

