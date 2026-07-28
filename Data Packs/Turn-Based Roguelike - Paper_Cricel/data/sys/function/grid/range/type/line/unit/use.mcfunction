
# if (pierce.unit == true) :
execute if data storage pc:temp range.line.pierce{unit:1b} run return 1

# elif (is intent) :
execute if data storage pc:temp range{mode:'intent'} run return run function sys:grid/range/type/line/unit/intent

# else :
return fail