# /!\ Uncompiled
# As/At : collectible
# Args :
#   - env (macro)
##

$data modify storage synb.d:tmp args.env set value $(env)
data modify storage synb.d:tmp args.pool_name set value "shop"
execute if entity @s[tag=synb.attr.source_gift] run data modify storage synb.d:tmp args.pool_name set value "gift"
execute if entity @s[tag=synb.attr.source_sacr] run data modify storage synb.d:tmp args.pool_name set value "sacr"

execute positioned ~ ~-1.2 ~ run function synb:elements/collectible/spawn_random with storage synb.d:tmp args
kill @s