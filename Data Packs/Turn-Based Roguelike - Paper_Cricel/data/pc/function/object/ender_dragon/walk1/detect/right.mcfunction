
execute if score #is_diagonal pc.main matches 0 positioned ^-4 ^ ^ run return run function pc:sys/object/motion/is_stayable
execute if score #is_diagonal pc.main matches 1 positioned ^-5.656 ^ ^ run return run function pc:sys/object/motion/is_stayable
return fail