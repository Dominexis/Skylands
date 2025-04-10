kill @e[type=!player,distance=..100,tag=feelsbatman.MARKER1,limit=1,sort=random]

execute as @s[scores={feelsbatman.WAVE=1..3}] store result score @s feelsbatman.ROLL run random value 1..2
execute as @s[scores={feelsbatman.WAVE=4..6}] store result score @s feelsbatman.ROLL run random value 1..4
execute as @s[scores={feelsbatman.WAVE=7..9}] store result score @s feelsbatman.ROLL run random value 1..6
execute as @s[scores={feelsbatman.WAVE=10..12}] store result score @s feelsbatman.ROLL run random value 1..8
execute as @s[scores={feelsbatman.WAVE=13..15}] store result score @s feelsbatman.ROLL run random value 1..10

execute as @s[scores={feelsbatman.ROLL=1}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ZOMBIE"]}
execute as @s[scores={feelsbatman.ROLL=2}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SKELETON"]}
execute as @s[scores={feelsbatman.ROLL=3}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_HUSK"]}
execute as @s[scores={feelsbatman.ROLL=4}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SPIDER"]}
execute as @s[scores={feelsbatman.ROLL=5}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ENDERMAN"]}
execute as @s[scores={feelsbatman.ROLL=6}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_STRAY"]}
execute as @s[scores={feelsbatman.ROLL=7}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CREEPER"]}
execute as @s[scores={feelsbatman.ROLL=8}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SLIME"]}
execute as @s[scores={feelsbatman.ROLL=9}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CSPIDER"]}
execute as @s[scores={feelsbatman.ROLL=10}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_BREEZE"]}
scoreboard players set @s feelsbatman.ROLL 0

execute as @s[scores={feelsbatman.WAVE=1..3}] store result score @s feelsbatman.ROLL run random value 1..2
execute as @s[scores={feelsbatman.WAVE=4..6}] store result score @s feelsbatman.ROLL run random value 1..4
execute as @s[scores={feelsbatman.WAVE=7..9}] store result score @s feelsbatman.ROLL run random value 1..6
execute as @s[scores={feelsbatman.WAVE=10..12}] store result score @s feelsbatman.ROLL run random value 1..8
execute as @s[scores={feelsbatman.WAVE=13..15}] store result score @s feelsbatman.ROLL run random value 1..10

execute as @s[scores={feelsbatman.ROLL=1}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ZOMBIE"]}
execute as @s[scores={feelsbatman.ROLL=2}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SKELETON"]}
execute as @s[scores={feelsbatman.ROLL=3}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_HUSK"]}
execute as @s[scores={feelsbatman.ROLL=4}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SPIDER"]}
execute as @s[scores={feelsbatman.ROLL=5}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_ENDERMAN"]}
execute as @s[scores={feelsbatman.ROLL=6}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_STRAY"]}
execute as @s[scores={feelsbatman.ROLL=7}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CREEPER"]}
execute as @s[scores={feelsbatman.ROLL=8}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SLIME"]}
execute as @s[scores={feelsbatman.ROLL=9}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_CSPIDER"]}
execute as @s[scores={feelsbatman.ROLL=10}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_BREEZE"]}
scoreboard players set @s feelsbatman.ROLL 0