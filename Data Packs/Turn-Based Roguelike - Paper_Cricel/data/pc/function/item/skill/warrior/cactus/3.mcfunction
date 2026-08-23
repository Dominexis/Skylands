
function pc:sys/grid/range/clear
data modify storage pc:temp range set value {type:'0',mode:'victim',target:'enemy'}
function pc:sys/grid/range/use

function pc:sys/entity/dmg/atker