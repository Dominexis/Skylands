
scoreboard players set #damage pc.main 0
function pc:sys/utils/passive/use {passive:"on_blocked"}

# fx
execute unless score #block_fx pc.main matches 0 run function pc:sys/fx/text/use {text:{nbt:"sys.fx.blocked",storage:"pc:lang",interpret:1b}}
scoreboard players reset #block_fx pc.main

particle minecraft:firework ~ ~ ~ 0 0 0 0.1 10 force
playsound minecraft:item.shield.block master @a ~ ~1024 ~ 0 1 0.5
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~1024 ~ 0 1.25 0.25