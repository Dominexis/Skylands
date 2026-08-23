
scoreboard players add #dbcost pc.main 1

# fx
function pc:sys/fx/text/use {text:{nbt:"sys.fx.rusty",storage:"pc:lang",interpret:1b}}
playsound minecraft:block.grindstone.use master @a ~ ~1024 ~ 0 1 1
playsound minecraft:entity.item.break master @a ~ ~1024 ~ 0 1 0.25