
# if (round == 3) :
execute if score $combat.round pc.game matches 3 run return run data modify storage pc:temp intent.intents set value [{id:"buff1"}]

# elif (ally < 3x3) :
data modify storage pc:temp range set value {mode:'detect',target:'ally',type:'5x5'}
execute if function sys:grid/range/use run return run data modify storage pc:temp intent.intents set value [{id:"attack1"}]

# else :
data modify storage pc:temp intent.intents set value [{id:"walk1"},{id:"attack2"}]