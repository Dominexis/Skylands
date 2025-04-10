kill @e[type=!player,distance=..100,tag=feelsbatman.MARKER1,limit=1,sort=random]

execute as @s[scores={feelsbatman.WAVE=2}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SKELETON"]}

execute as @s[scores={feelsbatman.WAVE=5}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SPIDER"]}

execute as @s[scores={feelsbatman.WAVE=8}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_STRAY"]}

execute as @s[scores={feelsbatman.WAVE=11}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SLIME"]}

execute as @s[scores={feelsbatman.WAVE=14}] run summon marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_BREEZE"]}