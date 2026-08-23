
execute if function pc:sys/grid/range/type/0 run return fail
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{x:{min:-0.1,max:0.1},z:{min:3.9,max:4.1}}}} run return 1
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{x:{min:3.9,max:4.1},z:{min:-0.1,max:0.1}}}} run return 1
return fail