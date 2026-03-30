
# effect
execute unless score $game.combat.start pc.main matches 1 run return fail
schedule function pc:sys/object/turn/use 0.5s