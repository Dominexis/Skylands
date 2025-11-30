# exe : object

# effect
# 無敵
execute if data entity @s {data:{effect:{dragon_scale:0}}} run return run function pc:passive/on_hurt/dragon_scale/invulnerable
execute if data entity @s data.effect.stone_form run return run function pc:passive/on_hurt/stone_form/use

# 跟數值有關的oao
execute if data entity @s data.effect.glass_cannon run function pc:passive/on_hurt/glass_cannon/use
execute if data entity @s data.effect.vulnerable run function pc:passive/on_hurt/vulnerable/use
execute if data entity @s data.effect.robust run function pc:passive/on_hurt/robust/use

execute if data storage pc:temp passive.math run function pc:sys/object/passive/math/use

# 跟效果有關的
    # 在計算護甲之前
execute if data entity @s data.effect.thorn run function pc:passive/on_hurt/thorn/use

execute if data entity @s data.shield anchored eyes positioned ^ ^ ^ run function pc:passive/on_hurt/shield/use

    # 在計算護甲之後
#execute if data entity @s data.effect.regen_shield run function pc:passive/on_hurt/regen_shield/use
execute if data entity @s data.effect.frighten run function pc:passive/on_hurt/frighten/use
execute if data entity @s data.effect.dragon_scale run function pc:passive/on_hurt/dragon_scale/use