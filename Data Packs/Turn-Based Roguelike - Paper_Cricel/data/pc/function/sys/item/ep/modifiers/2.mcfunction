
# if (modifiers has operation == "") :
execute if data storage pc:temp item.modifiers[{operation:""}] run return run function pc:sys/item/ep/modifiers/set/use

# else :
function pc:sys/item/ep/modifiers/add/use