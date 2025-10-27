kill @e[type=!minecraft:player,distance=..100,tag=feelsbatman.MARKER1,sort=random,limit=1]

execute if entity @s[scores={feelsbatman.WAVE=2}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SKELETON"]}

execute if entity @s[scores={feelsbatman.WAVE=5}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SPIDER"]}

execute if entity @s[scores={feelsbatman.WAVE=8}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_STRAY"]}

execute if entity @s[scores={feelsbatman.WAVE=11}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_SLIME"]}

execute if entity @s[scores={feelsbatman.WAVE=14}] run summon minecraft:marker -258 31 -3799 {Tags:["feelsbatman.MARKER","feelsbatman.MARKER1","feelsbatman.MARK_BREEZE"]}