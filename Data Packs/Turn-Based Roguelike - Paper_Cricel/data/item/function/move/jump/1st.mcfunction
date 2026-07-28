
tag @s add pc.item.move.jump.used
data modify storage pc:temp effect set value {id:'critical_hit',value:1}
function sys:effect/apply

# fx
playsound minecraft:item.trident.return master @a ~ ~1024 ~ 0 1 1
function sys:fx/text/use {text:{nbt:"sys.fx.jump",storage:"pc:lang",interpret:1b}}

particle crit ~ ~ ~ 2.0 0 0.0 1 0 force
particle crit ~ ~ ~ 1.917 0 0.144 1 0 force
particle crit ~ ~ ~ 1.833 0 0.289 1 0 force
particle crit ~ ~ ~ 1.75 0 0.433 1 0 force
particle crit ~ ~ ~ 1.667 0 0.577 1 0 force
particle crit ~ ~ ~ 1.583 0 0.722 1 0 force
particle crit ~ ~ ~ 1.5 0 0.866 1 0 force
particle crit ~ ~ ~ 1.417 0 1.01 1 0 force
particle crit ~ ~ ~ 1.333 0 1.155 1 0 force
particle crit ~ ~ ~ 1.25 0 1.299 1 0 force
particle crit ~ ~ ~ 1.167 0 1.443 1 0 force
particle crit ~ ~ ~ 1.083 0 1.588 1 0 force
particle crit ~ ~ ~ 1.0 0 1.732 1 0 force
particle crit ~ ~ ~ 0.833 0 1.732 1 0 force
particle crit ~ ~ ~ 0.667 0 1.732 1 0 force
particle crit ~ ~ ~ 0.5 0 1.732 1 0 force
particle crit ~ ~ ~ 0.333 0 1.732 1 0 force
particle crit ~ ~ ~ 0.167 0 1.732 1 0 force
particle crit ~ ~ ~ 0.0 0 1.732 1 0 force
particle crit ~ ~ ~ -0.167 0 1.732 1 0 force
particle crit ~ ~ ~ -0.333 0 1.732 1 0 force
particle crit ~ ~ ~ -0.5 0 1.732 1 0 force
particle crit ~ ~ ~ -0.667 0 1.732 1 0 force
particle crit ~ ~ ~ -0.833 0 1.732 1 0 force
particle crit ~ ~ ~ -1.0 0 1.732 1 0 force
particle crit ~ ~ ~ -1.083 0 1.588 1 0 force
particle crit ~ ~ ~ -1.167 0 1.443 1 0 force
particle crit ~ ~ ~ -1.25 0 1.299 1 0 force
particle crit ~ ~ ~ -1.333 0 1.155 1 0 force
particle crit ~ ~ ~ -1.417 0 1.01 1 0 force
particle crit ~ ~ ~ -1.5 0 0.866 1 0 force
particle crit ~ ~ ~ -1.583 0 0.722 1 0 force
particle crit ~ ~ ~ -1.667 0 0.577 1 0 force
particle crit ~ ~ ~ -1.75 0 0.433 1 0 force
particle crit ~ ~ ~ -1.833 0 0.289 1 0 force
particle crit ~ ~ ~ -1.917 0 0.144 1 0 force
particle crit ~ ~ ~ -2.0 0 0.0 1 0 force
particle crit ~ ~ ~ -1.917 0 -0.144 1 0 force
particle crit ~ ~ ~ -1.833 0 -0.289 1 0 force
particle crit ~ ~ ~ -1.75 0 -0.433 1 0 force
particle crit ~ ~ ~ -1.667 0 -0.577 1 0 force
particle crit ~ ~ ~ -1.583 0 -0.722 1 0 force
particle crit ~ ~ ~ -1.5 0 -0.866 1 0 force
particle crit ~ ~ ~ -1.417 0 -1.01 1 0 force
particle crit ~ ~ ~ -1.333 0 -1.155 1 0 force
particle crit ~ ~ ~ -1.25 0 -1.299 1 0 force
particle crit ~ ~ ~ -1.167 0 -1.443 1 0 force
particle crit ~ ~ ~ -1.083 0 -1.588 1 0 force
particle crit ~ ~ ~ -1.0 0 -1.732 1 0 force
particle crit ~ ~ ~ -0.833 0 -1.732 1 0 force
particle crit ~ ~ ~ -0.667 0 -1.732 1 0 force
particle crit ~ ~ ~ -0.5 0 -1.732 1 0 force
particle crit ~ ~ ~ -0.333 0 -1.732 1 0 force
particle crit ~ ~ ~ -0.167 0 -1.732 1 0 force
particle crit ~ ~ ~ -0.0 0 -1.732 1 0 force
particle crit ~ ~ ~ 0.167 0 -1.732 1 0 force
particle crit ~ ~ ~ 0.333 0 -1.732 1 0 force
particle crit ~ ~ ~ 0.5 0 -1.732 1 0 force
particle crit ~ ~ ~ 0.667 0 -1.732 1 0 force
particle crit ~ ~ ~ 0.833 0 -1.732 1 0 force
particle crit ~ ~ ~ 1.0 0 -1.732 1 0 force
particle crit ~ ~ ~ 1.083 0 -1.588 1 0 force
particle crit ~ ~ ~ 1.167 0 -1.443 1 0 force
particle crit ~ ~ ~ 1.25 0 -1.299 1 0 force
particle crit ~ ~ ~ 1.333 0 -1.155 1 0 force
particle crit ~ ~ ~ 1.417 0 -1.01 1 0 force
particle crit ~ ~ ~ 1.5 0 -0.866 1 0 force
particle crit ~ ~ ~ 1.583 0 -0.722 1 0 force
particle crit ~ ~ ~ 1.667 0 -0.577 1 0 force
particle crit ~ ~ ~ 1.75 0 -0.433 1 0 force
particle crit ~ ~ ~ 1.833 0 -0.289 1 0 force
particle crit ~ ~ ~ 1.917 0 -0.144 1 0 force