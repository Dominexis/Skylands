
data modify storage pc:temp range set value {type:'3x3',mode:'detect',target:'enemy'}
execute unless function pc:sys/grid/range/use run return fail

data modify storage pc:temp range set value {type:'0',mode:'in_range',target:'any'}
function pc:sys/grid/range/use
