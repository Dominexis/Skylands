
data modify storage pc:temp effect set value {id:'vigor'}
execute store result storage pc:temp effect.value int 3 run scoreboard players get #damage pc.main
function pc:sys/effect/apply

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.vigor",storage:"pc:lang",interpret:1b}}
playsound minecraft:entity.zombie.infect master @a ~ ~1024 ~ 0 1.25 1
playsound minecraft:entity.player.hurt_drown master @a ~ ~1024 ~ 0 0 1
particle minecraft:trial_spawner_detection ~ ~0.25 ~ 0 0 0 0.1 30 force