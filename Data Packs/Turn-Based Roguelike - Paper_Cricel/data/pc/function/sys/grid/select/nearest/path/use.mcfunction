
tag @s remove pc.path_finding.next_grid

# Diagonal Finding
execute if data storage pc:temp nearest.can_diagonal run function pc:sys/grid/select/nearest/path/diagonal

# Straight Finding
function pc:sys/grid/select/nearest/path/straight