
scoreboard players operation #damage pc.main = #level pc.main
scoreboard players set #level pc.main 0

# fx
playsound minecraft:block.anvil.land master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.25 2
playsound minecraft:block.stem.break master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0
particle minecraft:enchanted_hit ~ ~ ~ 0.75 0.75 0.75 0.5 50 force
function pc:fx/text/use {text:[{"color":"#4EABC2","text":"D"},{"color":"#4EA2C4","text":"r"},{"color":"#4D98C7","text":"a"},{"color":"#4D8FC9","text":"g"},{"color":"#4C86CB","text":"o"},{"color":"#4C7CCD","text":"n "},{"color":"#4B73D0","text":"S"},{"color":"#4B69D2","text":"c"},{"color":"#4A60D4","text":"a"},{"color":"#4A57D6","text":"l"},{"color":"#4944DB","text":"e"}]}