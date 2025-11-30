
# effect
scoreboard players set #value pc.main 300
function pc:passive/shield/use

scoreboard players set #value pc.main 1
function pc:sys/utils/math/set {id:"entity @s data.effect.revive"}

scoreboard players set #value pc.main 100
function pc:sys/utils/math/set {id:"entity @s data.effect.regeneration"}