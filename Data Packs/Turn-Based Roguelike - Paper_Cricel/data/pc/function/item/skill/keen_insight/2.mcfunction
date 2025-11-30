
# effect
function pc:sys/grid/select/mob

scoreboard players set #value pc.main 3
execute as @e[predicate=pc:object/victim,type=!player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] at @s run function pc:passive/effect/apply {effect:vulnerable}

function pc:sys/grid/select/clear

# fx
function pc:fx/text/use {text:{text:"Stare",color:"#9f2222"}}
function pc:fx/debuff/use
playsound minecraft:entity.ghast.ambient master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2