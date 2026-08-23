
# if (money) :
execute if data storage pc:temp loot{id:'money'} run return run function pc:sys/combat/end/win/chest/money/obtain

# else :
function pc:sys/combat/end/win/chest/obtain/3b with storage pc:temp loot