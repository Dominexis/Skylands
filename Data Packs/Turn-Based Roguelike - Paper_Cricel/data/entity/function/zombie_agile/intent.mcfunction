
data modify storage pc:temp intent.intents set value [{id:"walk1"}]

data modify storage pc:temp range set value {mode:'detect',target:'ally',type:'1x1'}
execute if function sys:grid/range/use run data modify storage pc:temp intent.intents set value [{id:"attack1"}]