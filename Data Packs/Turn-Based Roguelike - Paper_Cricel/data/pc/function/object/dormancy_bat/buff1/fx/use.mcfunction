
# effect
execute rotated ~ 0 run function pc:object/dormancy_bat/buff1/fx/2
execute rotated ~90 0 run function pc:object/dormancy_bat/buff1/fx/2
execute rotated ~180 0 run function pc:object/dormancy_bat/buff1/fx/2
execute rotated ~270 0 run function pc:object/dormancy_bat/buff1/fx/2

execute rotated ~45 0 rotated ~ 0 run function pc:object/dormancy_bat/buff1/fx/2
execute rotated ~45 0 rotated ~90 0 run function pc:object/dormancy_bat/buff1/fx/2
execute rotated ~45 0 rotated ~180 0 run function pc:object/dormancy_bat/buff1/fx/2
execute rotated ~45 0 rotated ~270 0 run function pc:object/dormancy_bat/buff1/fx/2

playsound minecraft:block.beacon.power_select master @a[predicate=sl:player,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] ~ ~ ~ 1 2