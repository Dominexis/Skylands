particle minecraft:squid_ink ~ ~1.5 ~ 0.2 0.4 0.2 0.05 4
execute if entity @s[advancements={sanct:spell/sprint_damage/damage={level2=false}}] run return run effect give @e[type=#sanct:undead,distance=0,limit=1] minecraft:wither 4 0
execute if entity @s[advancements={sanct:spell/sprint_damage/damage={level3=false}}] run return run effect give @e[type=#sanct:undead,distance=0,limit=1] minecraft:wither 4 1
execute if entity @s[advancements={sanct:spell/sprint_damage/damage={level4=false}}] run return run effect give @e[type=#sanct:undead,distance=0,limit=1] minecraft:wither 5 1
effect give @e[type=#sanct:undead,distance=0,limit=1] minecraft:wither 3 2