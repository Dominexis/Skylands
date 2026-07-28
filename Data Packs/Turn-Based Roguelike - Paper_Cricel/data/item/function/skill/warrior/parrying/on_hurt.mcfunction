
execute if data storage pc:temp damage{lose_hp:1b} run return fail
function sys:utils/local_thread/atker/save {id:"skill.warrior.parrying"}

execute unless entity @s[tag=pc.local_thread.skill.warrior.parrying.atker] \
as @e[tag=pc.local_thread.skill.warrior.parrying.atker,limit=1] at @s rotated ~180 ~ run function sys:entity/repel/use

function sys:utils/local_thread/atker/load {id:"skill.warrior.parrying"}

# fx
function sys:fx/text/use {text:{nbt:"sys.fx.parrying",storage:"pc:lang",interpret:1b}}

particle minecraft:composter ~2.5 ~ ~0.0 0 0 0 0 0 force
particle minecraft:composter ~2.462 ~ ~0.434 0 0 0 0 0 force
particle minecraft:composter ~2.349 ~ ~0.855 0 0 0 0 0 force
particle minecraft:composter ~2.165 ~ ~1.25 0 0 0 0 0 force
particle minecraft:composter ~1.915 ~ ~1.607 0 0 0 0 0 force
particle minecraft:composter ~1.607 ~ ~1.915 0 0 0 0 0 force
particle minecraft:composter ~1.25 ~ ~2.165 0 0 0 0 0 force
particle minecraft:composter ~0.855 ~ ~2.349 0 0 0 0 0 force
particle minecraft:composter ~0.434 ~ ~2.462 0 0 0 0 0 force
particle minecraft:composter ~0.0 ~ ~2.5 0 0 0 0 0 force
particle minecraft:composter ~-0.434 ~ ~2.462 0 0 0 0 0 force
particle minecraft:composter ~-0.855 ~ ~2.349 0 0 0 0 0 force
particle minecraft:composter ~-1.25 ~ ~2.165 0 0 0 0 0 force
particle minecraft:composter ~-1.607 ~ ~1.915 0 0 0 0 0 force
particle minecraft:composter ~-1.915 ~ ~1.607 0 0 0 0 0 force
particle minecraft:composter ~-2.165 ~ ~1.25 0 0 0 0 0 force
particle minecraft:composter ~-2.349 ~ ~0.855 0 0 0 0 0 force
particle minecraft:composter ~-2.462 ~ ~0.434 0 0 0 0 0 force
particle minecraft:composter ~-2.5 ~ ~0.0 0 0 0 0 0 force
particle minecraft:composter ~-2.462 ~ ~-0.434 0 0 0 0 0 force
particle minecraft:composter ~-2.349 ~ ~-0.855 0 0 0 0 0 force
particle minecraft:composter ~-2.165 ~ ~-1.25 0 0 0 0 0 force
particle minecraft:composter ~-1.915 ~ ~-1.607 0 0 0 0 0 force
particle minecraft:composter ~-1.607 ~ ~-1.915 0 0 0 0 0 force
particle minecraft:composter ~-1.25 ~ ~-2.165 0 0 0 0 0 force
particle minecraft:composter ~-0.855 ~ ~-2.349 0 0 0 0 0 force
particle minecraft:composter ~-0.434 ~ ~-2.462 0 0 0 0 0 force
particle minecraft:composter ~-0.0 ~ ~-2.5 0 0 0 0 0 force
particle minecraft:composter ~0.434 ~ ~-2.462 0 0 0 0 0 force
particle minecraft:composter ~0.855 ~ ~-2.349 0 0 0 0 0 force
particle minecraft:composter ~1.25 ~ ~-2.165 0 0 0 0 0 force
particle minecraft:composter ~1.607 ~ ~-1.915 0 0 0 0 0 force
particle minecraft:composter ~1.915 ~ ~-1.607 0 0 0 0 0 force
particle minecraft:composter ~2.165 ~ ~-1.25 0 0 0 0 0 force
particle minecraft:composter ~2.349 ~ ~-0.855 0 0 0 0 0 force
particle minecraft:composter ~2.462 ~ ~-0.434 0 0 0 0 0 force

particle minecraft:instant_effect ~-1.75 ~ ~1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.75 ~ ~-1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.25 ~ ~1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.25 ~ ~-1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-0.75 ~ ~1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-0.75 ~ ~-1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-0.25 ~ ~1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-0.25 ~ ~-1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~0.25 ~ ~1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~0.25 ~ ~-1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~0.75 ~ ~1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~0.75 ~ ~-1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~1.25 ~ ~1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~1.25 ~ ~-1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~1.75 ~ ~1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~1.75 ~ ~-1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.75 ~ ~-1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~1.75 ~ ~-1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.75 ~ ~-1.25 0 0 0 0 0 force
particle minecraft:instant_effect ~1.75 ~ ~-1.25 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.75 ~ ~-0.75 0 0 0 0 0 force
particle minecraft:instant_effect ~1.75 ~ ~-0.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.75 ~ ~-0.25 0 0 0 0 0 force
particle minecraft:instant_effect ~1.75 ~ ~-0.25 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.75 ~ ~0.25 0 0 0 0 0 force
particle minecraft:instant_effect ~1.75 ~ ~0.25 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.75 ~ ~0.75 0 0 0 0 0 force
particle minecraft:instant_effect ~1.75 ~ ~0.75 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.75 ~ ~1.25 0 0 0 0 0 force
particle minecraft:instant_effect ~1.75 ~ ~1.25 0 0 0 0 0 force
particle minecraft:instant_effect ~-1.75 ~ ~1.75 0 0 0 0 0 force
particle minecraft:instant_effect ~1.75 ~ ~1.75 0 0 0 0 0 force

playsound sys:nine_sols_parry master @a ~ ~1024 ~ 0 1 1