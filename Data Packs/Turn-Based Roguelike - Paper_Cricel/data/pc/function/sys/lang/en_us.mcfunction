# Note : Here's for testing, hasn't using yet.

# Reset
function pc:sys/lang/reset

# Items
data modify storage pc:lang item.skill.strike set value {text:'Strike'}
data modify storage pc:lang lore.skill.strike append value [{"text":"Deal 4 damage."}]