
scoreboard players operation #damage pc.main = #level pc.main
scoreboard players set #level pc.main 0

# fx
playsound minecraft:block.anvil.land master @a ~ ~1024 ~ 0 2 0.25
playsound minecraft:block.stem.break master @a ~ ~1024 ~ 0 0 1
particle minecraft:enchanted_hit ~ ~-0.75 ~ 0.75 0.75 0.75 0.5 50 force
function pc:sys/fx/text/use {text:{nbt:"sys.fx.dragon_scale",storage:"pc:lang",interpret:1b}}