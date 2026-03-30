
# motion
execute if score #rotate pc.main matches 2 rotated ~-90 ~ run function pc:sys/object/motion/use
execute if score #rotate pc.main matches 3 rotated ~90 ~ run function pc:sys/object/motion/use

# fx
scoreboard players set #value pc.main 1
function pc:passive/effect/apply {effect:entangled}
function pc:fx/text/use {text:[{text:"Stunned",color:"#665ed9"}]}
playsound minecraft:entity.zombie.attack_iron_door master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.75 0.75