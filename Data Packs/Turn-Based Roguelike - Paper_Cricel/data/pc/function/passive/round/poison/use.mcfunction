
# effect
scoreboard players set #damage pc.main 10
data modify storage pc:temp damage set value {bypass:{shield:1b,effect:1b}}
function pc:sys/object/damage/victim

# fx
particle minecraft:trial_omen ~ ~-0.25 ~ 0.4 0.4 0.4 0 5 force
playsound minecraft:entity.squid.hurt master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0