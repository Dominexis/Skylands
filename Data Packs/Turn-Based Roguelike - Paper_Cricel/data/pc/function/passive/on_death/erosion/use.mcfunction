
# effect
scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:stone_form}
function pc:passive/round/stone_form/summon

function pc:sys/object/intent/use

scoreboard players set #undyne pc.main 1
execute store result score #temp pc.main run data get entity @s data.hpmax
scoreboard players operation @s pc.hpmax += #temp pc.main
scoreboard players operation @s pc.hpmax += #temp pc.main
scoreboard players operation @s pc.hp = @s pc.hpmax

scoreboard players set #value pc.main 2
function pc:sys/utils/math/calculate {id:"entity @s data.silverfish_count"}

    # Round
scoreboard players set #value pc.main -1
function pc:sys/utils/math/calculate {id:"entity @s data.effect.erosion"}

# fx
function pc:fx/text/use {text:[{text:"Erosion",color: "#5d527a"}]}
particle infested ~ ~ ~ 0.5 0.5 0.5 0.1 20 force
playsound minecraft:block.end_gateway.spawn master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2
particle explosion ~ ~1 ~ 1751 0 6137 0.0015 0