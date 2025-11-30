
# effect
tag @s add pc.fx.debuff.user
scoreboard players reset @s pc.fx.debuff

# fx
playsound minecraft:block.respawn_anchor.deplete master @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] ~ ~ ~ 1 0
particle minecraft:squid_ink ~ ~ ~ 0.3 0.4 0.3 0 5 force