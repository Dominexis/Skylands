
# effect
function pc:sys/object/intent/kill

# Summon New Intent
function pc:sys/object/intent/2 with entity @s data
function pc:sys/object/intent/4 with entity @s data.intent
function pc:sys/object/intent/icon/self/use

# Reset
data remove storage pc:temp intent
data remove storage pc:temp line