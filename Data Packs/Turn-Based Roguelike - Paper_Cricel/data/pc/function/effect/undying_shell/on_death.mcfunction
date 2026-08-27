
execute if score #is_minion pc.main matches 1 run return fail
function pc:entity/effect/undying_shell/summon

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.undying_shell",storage:"pc:lang",interpret:1b}}
particle minecraft:infested ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
playsound minecraft:entity.stray.death master @a ~ ~1024 ~ 0 0 0.75
playsound minecraft:item.trident.hit_ground master @a ~ ~1024 ~ 0 0 1
particle minecraft:poof ~ ~ ~ 0.3 0 0.3 0.1 30 force