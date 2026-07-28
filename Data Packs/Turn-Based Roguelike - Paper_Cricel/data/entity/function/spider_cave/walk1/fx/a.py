
dust = 'dust_color_transition{from_color:[0.918, 0.894, 0.929],to_color:[0.502, 0.439, 0.573],scale:1}'

for i in range(5,100,5):
    y = round(i*0.1,1)
    print(f"particle {dust} ~ ~{y} ~ 0.1 0.1 0.1 0 1 force")