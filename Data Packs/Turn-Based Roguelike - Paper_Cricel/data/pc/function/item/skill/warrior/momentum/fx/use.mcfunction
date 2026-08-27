
execute store success score #skill.warrior.momentum.fx pc.main if score #skill.warrior.momentum.fx pc.main matches 0

execute if score #skill.warrior.momentum.fx pc.main matches 0 rotated ~90 22.5 run return run function pc:item/skill/warrior/momentum/fx/2
execute rotated ~90 -22.5 run return run function pc:item/skill/warrior/momentum/fx/2