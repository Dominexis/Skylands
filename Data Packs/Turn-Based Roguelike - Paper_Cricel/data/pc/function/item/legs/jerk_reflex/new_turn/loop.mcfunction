
scoreboard players remove #legs.jerk_reflex.hurt pc.main 1

data modify storage pc:temp shield set value {value:2}
function pc:sys/entity/shield/use

execute if score #legs.jerk_reflex.hurt pc.main matches 1.. run function pc:sys/entity/schedule/use {func:"function pc:item/legs/jerk_reflex/new_turn/loop",delay:3}

# fx
playsound minecraft:entity.breeze.deflect master @a ~ ~1024 ~ 0 0 0.5

particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-0.8 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-0.8 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-0.6 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-0.6 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-0.4 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-0.4 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-0.2 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-0.2 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-0.0 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-0.0 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~0.2 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~0.2 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~0.4 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~0.4 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~0.6 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~0.6 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~0.8 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~0.8 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~-1.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~-0.8 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~-0.8 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~-0.6 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~-0.6 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~-0.4 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~-0.4 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~-0.2 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~-0.2 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~-0.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~-0.0 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~0.2 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~0.2 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~0.4 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~0.4 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~0.6 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~0.6 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~-1.0 ~0.25 ~0.8 0 0 0 0 0 force
particle dust{color:[0.671,0.847,1.000],scale:1} ~1.0 ~0.25 ~0.8 0 0 0 0 0 force