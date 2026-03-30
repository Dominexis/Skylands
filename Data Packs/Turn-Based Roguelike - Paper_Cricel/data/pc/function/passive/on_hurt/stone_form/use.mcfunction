
# effect
execute if data storage pc:temp damage.bypass.effect run return fail
scoreboard players set #damage pc.main 0

# fx
execute if data storage pc:temp damage.display run return fail
playsound minecraft:entity.iron_golem.damage master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1
function pc:fx/text/use {text:[{text:"Stone Form",color:"#f3efc5"}]}