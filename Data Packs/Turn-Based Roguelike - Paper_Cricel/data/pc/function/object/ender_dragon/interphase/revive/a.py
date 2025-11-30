
import math
frame = -1

for i in range(0, 360, 24):
    frame += 1
    theta = math.radians(i)
    x = round(math.sin(theta), 3)
    y = round(math.cos(theta), 3)
    print(f'execute if score #temp pc.main matches {frame} run particle item{{item:white_concrete}} ^{x} ^{y} ^ 0 0 0 0 0 force')