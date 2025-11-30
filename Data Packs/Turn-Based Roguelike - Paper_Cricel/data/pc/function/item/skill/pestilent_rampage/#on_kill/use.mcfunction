
# effect
#execute as @e[predicate=pc:object/victim,type=!player,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] store success score #pass pc.main run function pc:item/skill/pestilent_rampage/on_kill/2
#execute if score #pass pc.main matches 1 run function pc:item/skill/pestilent_rampage/on_kill/3