
# effect
data modify storage pc:temp line.state.select set value false
execute unless data storage pc:temp line.unhindered run data modify storage pc:temp line.state.next set value false