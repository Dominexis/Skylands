
# effect
function pc:sys/object/intent/kill

    # Summon New Intent
function pc:sys/object/intent/4 with entity @s data.intent

    # Reset
data remove storage pc:temp intent
data remove storage pc:temp line