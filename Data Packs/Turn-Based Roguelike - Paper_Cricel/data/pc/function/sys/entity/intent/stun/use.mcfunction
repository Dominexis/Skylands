
tag @s remove pc.intent.interrupt
function pc:sys/combat/turn/end_act

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.stunned",storage:"pc:lang",interpret:1b}}
playsound entity.zombie_villager.converted master @a ~ ~1024 ~ 0 1 0.75