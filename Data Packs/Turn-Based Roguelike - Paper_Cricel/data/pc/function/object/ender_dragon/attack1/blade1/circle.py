# Made by 紙圓Paper_Cricel ;) (& Copilot)
import math
import os

Y_SCALE = 0.75
radii = [9.85, 9.35, 8.85, 8.35, 7.85]
angles = range(0, 181, 2)

def convert(r, angle, id):
    theta = math.radians(angle)
    x = round(r * math.cos(theta), 3)
    y = round(r * math.sin(theta), 3) * Y_SCALE
    return f'particle {id} ^{x} ^ ^{y} 0 0 0 100000000 1 force'

# 準備資料夾
base_path = os.path.dirname(__file__)
frame_dir = os.path.join(base_path, 'frame')
os.makedirs(frame_dir, exist_ok=True)

coordinates = []
current_frame = 0

for angle in angles:
    new_frame = round(angle / 180 * 5)

    if new_frame != current_frame or angle == angles[-1]:
        path = os.path.join(frame_dir, f'{current_frame + 1}.mcfunction')
        with open(path, 'w+') as f:
            f.write('\n'.join(coordinates))
        coordinates = []
        current_frame = new_frame

    for r in radii:
        id = 'end_rod' if r == 9.85 else 'dust{color:[0,0,0],scale:0.75}'
        coordinates.append(convert(r, angle, id))