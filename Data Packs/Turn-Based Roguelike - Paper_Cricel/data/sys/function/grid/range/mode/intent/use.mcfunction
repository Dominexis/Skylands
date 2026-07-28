
# if (target == turn_off) :
execute if data storage pc:temp range{target:'turn_off'} run return run function sys:grid/range/mode/intent/turn_off

# elif (available == false) :
execute unless function sys:grid/is_available run return fail

# elif (target == false) :
execute unless function sys:grid/range/target/is run return fail

# elif (intent == existed) :
execute if function sys:grid/range/mode/intent/is_exist run return fail

# else :
execute summon marker run function sys:grid/range/mode/intent/data