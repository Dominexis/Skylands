
tp @s 0 320 0

data modify storage pc:temp gametype set from entity @s playerGameType
gamemode creative

$execute positioned 0 320 0 anchored eyes positioned ^ ^ ^-$(s) summon end_crystal run damage @s 1
$execute positioned 0 320 0 anchored eyes positioned ^ ^ ^-$(s) summon end_crystal run damage @s 1

execute if data storage pc:temp {gametype:0} run gamemode survival
execute if data storage pc:temp {gametype:1} run gamemode creative
execute if data storage pc:temp {gametype:2} run gamemode adventure
execute if data storage pc:temp {gametype:3} run gamemode spectator
data remove storage pc:temp gametype

tp @s ~ ~ ~