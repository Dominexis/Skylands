
# init
fill 2519 0 5502 2552 0 5474 stone
data remove storage pc:game combat

# effect
$scoreboard players set #count pc.main $(count)
$function pc:game/minecraft/_test/setup {mob:"$(mob)"}
function pc:sys/game/combat/start/use
