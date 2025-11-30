# exe : object

# effect
scoreboard players set #value pc.main 2
function pc:passive/effect/apply {effect:strength}

# fx
function pc:fx/text/use {text:[{text:"Repairsman's Core",color:"#d15b41"}]}
playsound minecraft:entity.iron_golem.repair master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2