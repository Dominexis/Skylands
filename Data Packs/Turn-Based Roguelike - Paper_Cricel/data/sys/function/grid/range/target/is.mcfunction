
# if (target == null) :
execute unless data storage pc:temp range.target run return 1

# elif (target == space) :
execute if data storage pc:temp range{target:'space'} run return run function sys:grid/range/target/space

# else :
return run function sys:grid/range/target/general with storage pc:temp range