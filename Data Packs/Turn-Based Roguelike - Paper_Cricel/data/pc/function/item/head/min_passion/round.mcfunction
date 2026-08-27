
scoreboard players set #value pc.main 1
function pc:sys/utils/math/calculate {id:"entity @s data.hotbar.head.combat.turn"}
execute if score #var pc.main matches ..2 run return fail

data modify storage pc:temp effect set value {id:strength,value:-1}
function pc:sys/effect/apply
data modify storage pc:temp effect set value {id:energized,value:-1}
function pc:sys/effect/apply

data modify entity @s data.hotbar.head.combat.turn set value 0

# fx
playsound minecraft:entity.panda.sneeze master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.wolf.whine master @a ~ ~1024 ~ 0 0 1
playsound minecraft:entity.generic.swim master @a ~ ~1024 ~ 0 0 1
function pc:sys/fx/text/use {text:{nbt:"sys.fx.boredom",storage:"pc:lang",interpret:1b}}