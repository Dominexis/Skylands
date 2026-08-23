
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{x:{min:-0.1,max:0.1},z:{min:0}}}} run return 1
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{x:{min:0},z:{min:-0.1,max:0.1}}}} run return 1
return fail