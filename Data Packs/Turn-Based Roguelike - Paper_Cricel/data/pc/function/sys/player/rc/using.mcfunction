
execute unless score $game.combat.start pc.main matches 1 run return fail
execute if entity @s[tag=pc.sys.rc] run return fail

# effect
function pc:sys/player/rc/use