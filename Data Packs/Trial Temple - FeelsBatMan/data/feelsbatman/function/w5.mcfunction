kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER1,sort=random,limit=5]

execute store result score @s feelsbatman.ROLL run random value 1..10

execute if entity @s[scores={feelsbatman.ROLL=1}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ZOMBIE"]}
execute if entity @s[scores={feelsbatman.ROLL=2}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SKELETON"]}
execute if entity @s[scores={feelsbatman.ROLL=3}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_HUSK"]}
execute if entity @s[scores={feelsbatman.ROLL=4}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SPIDER"]}
execute if entity @s[scores={feelsbatman.ROLL=5}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ENDERMAN"]}
execute if entity @s[scores={feelsbatman.ROLL=6}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_STRAY"]}
execute if entity @s[scores={feelsbatman.ROLL=7}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CREEPER"]}
execute if entity @s[scores={feelsbatman.ROLL=8}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SLIME"]}
execute if entity @s[scores={feelsbatman.ROLL=9}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CSPIDER"]}
execute if entity @s[scores={feelsbatman.ROLL=10}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_BREEZE"]}
scoreboard players set @s feelsbatman.ROLL 0

execute store result score @s feelsbatman.ROLL run random value 1..10

execute if entity @s[scores={feelsbatman.ROLL=1}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ZOMBIE"]}
execute if entity @s[scores={feelsbatman.ROLL=2}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SKELETON"]}
execute if entity @s[scores={feelsbatman.ROLL=3}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_HUSK"]}
execute if entity @s[scores={feelsbatman.ROLL=4}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SPIDER"]}
execute if entity @s[scores={feelsbatman.ROLL=5}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ENDERMAN"]}
execute if entity @s[scores={feelsbatman.ROLL=6}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_STRAY"]}
execute if entity @s[scores={feelsbatman.ROLL=7}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CREEPER"]}
execute if entity @s[scores={feelsbatman.ROLL=8}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SLIME"]}
execute if entity @s[scores={feelsbatman.ROLL=9}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CSPIDER"]}
execute if entity @s[scores={feelsbatman.ROLL=10}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_BREEZE"]}
scoreboard players set @s feelsbatman.ROLL 0

execute store result score @s feelsbatman.ROLL run random value 1..10

execute if entity @s[scores={feelsbatman.ROLL=1}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ZOMBIE"]}
execute if entity @s[scores={feelsbatman.ROLL=2}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SKELETON"]}
execute if entity @s[scores={feelsbatman.ROLL=3}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_HUSK"]}
execute if entity @s[scores={feelsbatman.ROLL=4}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SPIDER"]}
execute if entity @s[scores={feelsbatman.ROLL=5}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ENDERMAN"]}
execute if entity @s[scores={feelsbatman.ROLL=6}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_STRAY"]}
execute if entity @s[scores={feelsbatman.ROLL=7}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CREEPER"]}
execute if entity @s[scores={feelsbatman.ROLL=8}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SLIME"]}
execute if entity @s[scores={feelsbatman.ROLL=9}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CSPIDER"]}
execute if entity @s[scores={feelsbatman.ROLL=10}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_BREEZE"]}
scoreboard players set @s feelsbatman.ROLL 0

execute store result score @s feelsbatman.ROLL run random value 1..10

execute if entity @s[scores={feelsbatman.ROLL=1}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ZOMBIE"]}
execute if entity @s[scores={feelsbatman.ROLL=2}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SKELETON"]}
execute if entity @s[scores={feelsbatman.ROLL=3}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_HUSK"]}
execute if entity @s[scores={feelsbatman.ROLL=4}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SPIDER"]}
execute if entity @s[scores={feelsbatman.ROLL=5}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ENDERMAN"]}
execute if entity @s[scores={feelsbatman.ROLL=6}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_STRAY"]}
execute if entity @s[scores={feelsbatman.ROLL=7}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CREEPER"]}
execute if entity @s[scores={feelsbatman.ROLL=8}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SLIME"]}
execute if entity @s[scores={feelsbatman.ROLL=9}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CSPIDER"]}
execute if entity @s[scores={feelsbatman.ROLL=10}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_BREEZE"]}
scoreboard players set @s feelsbatman.ROLL 0

execute store result score @s feelsbatman.ROLL run random value 1..10

execute if entity @s[scores={feelsbatman.ROLL=1}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ZOMBIE"]}
execute if entity @s[scores={feelsbatman.ROLL=2}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SKELETON"]}
execute if entity @s[scores={feelsbatman.ROLL=3}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_HUSK"]}
execute if entity @s[scores={feelsbatman.ROLL=4}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SPIDER"]}
execute if entity @s[scores={feelsbatman.ROLL=5}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ENDERMAN"]}
execute if entity @s[scores={feelsbatman.ROLL=6}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_STRAY"]}
execute if entity @s[scores={feelsbatman.ROLL=7}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CREEPER"]}
execute if entity @s[scores={feelsbatman.ROLL=8}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SLIME"]}
execute if entity @s[scores={feelsbatman.ROLL=9}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CSPIDER"]}
execute if entity @s[scores={feelsbatman.ROLL=10}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_BREEZE"]}
scoreboard players set @s feelsbatman.ROLL 0