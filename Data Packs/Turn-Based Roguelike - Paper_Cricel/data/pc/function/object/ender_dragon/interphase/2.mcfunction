
# effect
execute as @e[predicate=pc:object/neutral,type=!player,tag=pc.fx.undying_shell,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s positioned ~ ~-1 ~ run function pc:object/ender_dragon/interphase/revive/use

scoreboard players set #value pc.main 0
function pc:sys/utils/math/set {id:"entity @s data.effect.enraged"}
function pc:sys/utils/math/set {id:"entity @s data.effect.weakness"}
function pc:sys/utils/math/set {id:"entity @s data.effect.vulnerable"}
function pc:sys/utils/math/set {id:"entity @s data.effect.poison"}

scoreboard players set #value pc.main 3
function pc:sys/utils/math/calculate {id:"entity @s data.effect.strength"}

# fx