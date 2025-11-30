
# Effects
execute if data entity @s data.effect.dragon_scale run function pc:passive/round/dragon_scale/use
execute if data entity @s data.effect.regeneration run function pc:passive/round/regeneration/use
execute if data entity @s data.effect.poison run function pc:passive/round/poison/use
execute if data entity @s data.effect.stone_form run function pc:passive/round/stone_form/use

# Per Round Reduce
execute if data entity @s data.shield run function pc:passive/round/shield/use

scoreboard players set #value pc.main -1
execute if data entity @s data.effect.regeneration run function pc:sys/utils/math/calculate {id:'entity @s data.effect.regeneration'}
execute if data entity @s data.effect.weakness run function pc:sys/utils/math/calculate {id:'entity @s data.effect.weakness'}
execute if data entity @s data.effect.vulnerable run function pc:sys/utils/math/calculate {id:'entity @s data.effect.vulnerable'}
execute if data entity @s data.effect.critical_hit run function pc:sys/utils/math/calculate {id:'entity @s data.effect.critical_hit'}
execute if data entity @s data.effect.robust run function pc:sys/utils/math/calculate {id:'entity @s data.effect.robust'}
execute if data entity @s data.effect.no_heal run function pc:sys/utils/math/calculate {id:'entity @s data.effect.no_heal'}
execute if data entity @s data.effect.poison run function pc:sys/utils/math/calculate {id:'entity @s data.effect.poison'}
execute if data entity @s data.effect.no_wearsoff_shield run function pc:sys/utils/math/calculate {id:'entity @s data.effect.no_wearsoff_shield'}
execute if entity @s[predicate=pc:object/ally_player,type=!player] run function pc:passive/round/player