
data modify storage pc:temp range set value {type:"0",target:"ally",mode:"victim"}
function pc:sys/grid/range/use

execute store result score #damage pc.main run data get entity @s data.damage
function pc:sys/entity/dmg/atker

function pc:sys/grid/range/clear

# fx
particle minecraft:instant_effect{color:[0.682, 0.251, 0.867]} ~ ~0.5 ~ 0.3 0 0.3 0.1 15 force
particle minecraft:flash{color:[0.682, 0.251, 0.867, 1]} ~ ~ ~ 0 0 0 0 0 force

particle squid_ink ~ ~0.25 ~ 1.0 0 0.0 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.985 0 0.174 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.94 0 0.342 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.866 0 0.5 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.766 0 0.643 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.643 0 0.766 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.5 0 0.866 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.342 0 0.94 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.174 0 0.985 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.0 0 1.0 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.174 0 0.985 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.342 0 0.94 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.5 0 0.866 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.643 0 0.766 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.766 0 0.643 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.866 0 0.5 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.94 0 0.342 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.985 0 0.174 0.3 0 force
particle squid_ink ~ ~0.25 ~ -1.0 0 0.0 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.985 0 -0.174 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.94 0 -0.342 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.866 0 -0.5 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.766 0 -0.643 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.643 0 -0.766 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.5 0 -0.866 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.342 0 -0.94 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.174 0 -0.985 0.3 0 force
particle squid_ink ~ ~0.25 ~ -0.0 0 -1.0 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.174 0 -0.985 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.342 0 -0.94 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.5 0 -0.866 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.643 0 -0.766 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.766 0 -0.643 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.866 0 -0.5 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.94 0 -0.342 0.3 0 force
particle squid_ink ~ ~0.25 ~ 0.985 0 -0.174 0.3 0 force