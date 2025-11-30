# exe : object
# usage : (storage pc:temp) {repair:{category/item,value,is_max,*unlimit}}

# effect
function pc:sys/item/durability/get_value
execute unless score #dbmax pc.main matches -1 run function pc:sys/item/durability/3

data remove storage pc:temp repair