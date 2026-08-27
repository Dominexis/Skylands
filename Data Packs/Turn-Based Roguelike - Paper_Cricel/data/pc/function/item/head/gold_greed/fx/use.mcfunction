
summon marker ~ ~ ~ {Tags:[pc.head.gold_greed,pc.fx]}

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.gold_greed",storage:"pc:lang",interpret:1b}}
playsound pc:sys/gold_greed master @a ~ ~1024 ~ 0 1 1