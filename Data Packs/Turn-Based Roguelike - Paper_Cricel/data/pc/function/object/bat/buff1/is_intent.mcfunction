
# 5x5 內要有敵人
execute unless function pc:sys/grid/detect/mob5x5 run return fail

# 不能有 Critical Hit
execute if data entity @s data.effect.critical_hit run return fail

return 1