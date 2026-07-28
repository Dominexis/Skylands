
data modify storage pc:temp range set value {type:'5x5',mode:'detect',target:'ally'}
execute if function sys:grid/range/use run return run data modify storage pc:temp intent.intents set value [{id:"attack1"}]

data modify storage pc:temp intent.intents set value [{id:"walk1"}]