import numpy as np
import os

# ----- 計算正方形邊上的座標並旋轉 ----- #

# 設置起始與結束尺寸，平分為 4 份 (0, 1, 2, 3)
sizes = np.linspace(1, 1.75, 4)
step = 0.2   # 點之間的間隔
dust = 'item{item:"red_concrete_powder"}'

def particle(x: float, y: float) -> str:
    # 四捨五入座標
    x = round(x, 3)
    y = round(y, 3) - 0.25
    return f'particle {dust} ^{x} ^{y} ^ 0 0 0 1000000 1 force'

# 定義基礎輸出路徑
current_file = __file__.replace('\\', '/')
base_dir = os.path.dirname(current_file)

for i, size in enumerate(sizes):
    coordinates = []
    half = size / 2

    # 上下邊
    for x in np.arange(-half, half + step, step):
        x = float(x)
        coordinates.append(particle(x, half))     # 上邊
        coordinates.append(particle(x, -half))    # 下邊

    # 左右邊 (避開角落重複點)
    for y in np.arange(-half + step, half, step):
        y = float(y)
        coordinates.append(particle(-half, y))    # 左邊
        coordinates.append(particle(half, y))     # 右邊

    # 根據索引生成檔名 (0.mcfunction, 1.mcfunction...)
    output_path = os.path.join(base_dir, f'{i}.mcfunction')

    # 輸出座標清單
    with open(output_path, 'w+', encoding='utf-8') as f:
        f.write('\n'.join(coordinates))
    
    print(f"尺寸 {size:.2f} 已生成至: {output_path}")

print("\n所有檔案生成成功！")