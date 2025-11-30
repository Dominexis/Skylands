
# reset
function pc:sys/game/combat/end/clear

# new combat
execute store success score #pass pc.main if data storage pc:game levels[0]
execute if score #pass pc.main matches 1 run function pc:sys/game/combat/end/return/has_level/use
execute if score #pass pc.main matches 0 run function pc:sys/game/combat/end/return/no_level/use