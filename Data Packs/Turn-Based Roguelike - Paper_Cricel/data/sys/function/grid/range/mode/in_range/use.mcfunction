
# if (available == false) :
execute unless function sys:grid/is_available run return fail

# elif (target == range.target) :
execute if function sys:grid/range/target/is run return run function sys:grid/range/mode/in_range/2

# else :
return fail