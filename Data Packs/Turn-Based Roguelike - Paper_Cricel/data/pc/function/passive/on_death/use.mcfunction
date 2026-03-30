# exe : object

# effect
execute if data entity @s data.effect.revive run function pc:passive/on_death/revive/use
execute if data entity @s data.effect.erosion run function pc:passive/on_death/erosion/use
execute if data entity @s data.effect.undying_shell run function pc:passive/on_death/undying_shell/use