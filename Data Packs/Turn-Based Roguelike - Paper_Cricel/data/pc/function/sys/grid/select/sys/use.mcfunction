
# effect
execute if data storage pc:temp {grid:{mode:in_range}} run function pc:sys/grid/select/sys/player
execute if data storage pc:temp {grid:{mode:intent}} summon marker run function pc:sys/grid/select/sys/intent
execute if data storage pc:temp {grid:{mode:victim}} run function pc:sys/grid/select/sys/victim