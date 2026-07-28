
# if (modifiers has operation == "") :
execute if data storage pc:temp item.modifiers[{operation:""}] run return run function sys:item/ep/modifiers/set/use

# else :
function sys:item/ep/modifiers/add/use