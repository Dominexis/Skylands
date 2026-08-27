
execute if function pc:sys/grid/range/type/0 run return fail
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{x:{min:-0.1,max:0.1},z:{max:8.1}}}} run return 1
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{x:{max:8.1},z:{min:-0.1,max:0.1}}}} run return 1
return fail