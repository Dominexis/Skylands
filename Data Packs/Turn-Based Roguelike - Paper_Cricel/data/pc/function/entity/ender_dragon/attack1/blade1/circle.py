import math
import os

Y_SCALE = 0.75
radis = [9.85, 9.35, 8.85, 8.35, 7.85, 7.35, 6.85, 6.35]
angles = range(0, 181, 2)

def convert(r, angle, id):
    theta = math.radians(angle)
    x = round(r * math.cos(theta), 3)
    y = round(r * math.sin(theta) * Y_SCALE, 3)
    
    if id == 'end_rod':
        # end_rod 的粒子格式：速度 1000000，數量 1
        return f'particle {id} ^{x} ^ ^{y} 0 0 0 1000000 1 force'
        
    elif id == 'dust{color:[0,0,0],scale:0.75f}':
        return f'particle {id} ^{x} ^ ^{y} 0 0 0 0 0 force'
        
    return f'particle {id} ^{x} ^ ^{y} 0 0 0 0.1 1 force'

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

    for r in radis:
        id = 'end_rod' if r == 9.85 else 'dust{color:[0,0,0],scale:0.75f}'
        coordinates.append(convert(r, angle, id))