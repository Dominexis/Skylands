
for i in range(20):
    print(f"execute if score @s pc.duration matches {i} run playsound minecraft:ui.button.click master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 0.25 {round(i/20*1.5+0.5,1)}")