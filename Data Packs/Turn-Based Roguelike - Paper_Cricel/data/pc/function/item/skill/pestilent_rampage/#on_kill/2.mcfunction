
# effect
function pc:passive/effect/icon
execute store result score #count pc.main run data get storage pc:temp hover.display.effect
data remove storage pc:temp hover

execute if score #count pc.main matches 3.. run return 1
return fail