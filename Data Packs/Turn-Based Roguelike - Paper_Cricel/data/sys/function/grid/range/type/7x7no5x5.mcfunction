
execute if function sys:grid/range/type/5x5 run return fail
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{distance:{x:{max:12.1},z:{max:12.1}}}} run return 1
return fail