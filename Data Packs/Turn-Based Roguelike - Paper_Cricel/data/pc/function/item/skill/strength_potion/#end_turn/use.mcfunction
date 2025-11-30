
# effect
execute unless entity @s[tag=pc.skill.strength_potion] run return fail

    # Remove
tag @s remove pc.skill.strength_potion
scoreboard players set #value pc.main -4
function pc:sys/utils/math/calculate {id:"entity @s data.effect.strength"}

# fx
playsound minecraft:block.brewing_stand.brew master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 0
playsound minecraft:entity.generic.extinguish_fire master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.5 1
particle minecraft:falling_dust{block_state:gray_concrete} ~ ~0.5 ~ 0.3 0.4 0.3 0 40 force
particle minecraft:falling_dust{block_state:black_concrete} ~ ~0.5 ~ 0.3 0.4 0.3 0 40 force