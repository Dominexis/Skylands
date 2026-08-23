
execute unless entity @s[tag=pc.effect.vigor.hit] run return fail

data remove storage pc:temp passive.current
tag @s remove pc.effect.vigor.hit

# fx
playsound minecraft:entity.player.attack.sweep master @a ~ ~1024 ~ 0 2 1
playsound minecraft:entity.breeze.deflect master @a ~ ~1024 ~ 0 1.25 1