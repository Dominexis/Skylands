
for i in range(1,60,2):
    print(f"execute if score @s pc.duration matches {i} run data modify entity @s text_opacity set value {round(250*(1-i/60))}")