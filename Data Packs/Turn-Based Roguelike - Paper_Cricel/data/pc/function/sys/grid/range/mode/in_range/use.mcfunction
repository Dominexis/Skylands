
# if (available == false) :
execute unless function pc:sys/grid/is_available run return fail

# elif (target == range.target) :
execute if function pc:sys/grid/range/target/is run return run function pc:sys/grid/range/mode/in_range/2

# else :
return fail