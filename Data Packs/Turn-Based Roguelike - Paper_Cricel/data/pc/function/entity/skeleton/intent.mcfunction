
# if (ally < 1x1) :
data modify storage pc:temp range set value {type:'1x1',mode:'detect',target:'ally'}
execute if function pc:sys/grid/range/use run return run function pc:entity/skeleton/intent_within3x3

# elif (ally < 5x5) :
data modify storage pc:temp range set value {type:'5x5',mode:'detect',target:'ally'}
execute if function pc:sys/grid/range/use run return run data modify storage pc:temp intent.intents set value [{id:"attack1"},{id:"debuff1",weight:3}]

# elif (ally < 7x7) :
data modify storage pc:temp range set value {type:'7x7',mode:'detect',target:'ally'}
execute if function pc:sys/grid/range/use run return run data modify storage pc:temp intent.intents set value [{id:"attack1"}]

# else :
data modify storage pc:temp intent.intents set value [{id:"walk1"}]