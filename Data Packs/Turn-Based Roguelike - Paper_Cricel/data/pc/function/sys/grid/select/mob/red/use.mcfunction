
execute if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{invisibility:{}}}} run return fail

team join pc.red @s
data modify entity @s Glowing set value 1b