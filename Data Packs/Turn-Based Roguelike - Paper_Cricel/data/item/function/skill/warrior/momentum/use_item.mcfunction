
execute store result score #skill.warrior.momentum.repeat pc.main run function item:skill/warrior/momentum/repeat/get with storage pc:temp passive.current
function item:skill/warrior/momentum/repeat/add with storage pc:temp passive.current
function item:skill/warrior/momentum/count/add with storage pc:temp passive.current
function sys:player/hotbar/update with storage pc:temp passive.current

# tellraw @a {score:{name:"#skill.warrior.momentum.repeat",objective:"pc.main"}}