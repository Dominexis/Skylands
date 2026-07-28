
data modify storage pc:temp effect set value {id:"dragonbreath_area/mark",value:5}
function sys:effect/apply
scoreboard players reset @s pc.entity.victim

# fx
playsound minecraft:entity.squid.death master @a ~ ~1024 ~ 0 1 0.75
playsound minecraft:entity.puffer_fish.blow_out master @a ~ ~1024 ~ 0 0.75 0.75

particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 20 force

particle enchanted_hit ~ ~ ~ 1.0 0 0.0 2 0 force
particle enchanted_hit ~ ~ ~ 0.996 0 0.087 2 0 force
particle enchanted_hit ~ ~ ~ 0.985 0 0.174 2 0 force
particle enchanted_hit ~ ~ ~ 0.966 0 0.259 2 0 force
particle enchanted_hit ~ ~ ~ 0.94 0 0.342 2 0 force
particle enchanted_hit ~ ~ ~ 0.906 0 0.423 2 0 force
particle enchanted_hit ~ ~ ~ 0.866 0 0.5 2 0 force
particle enchanted_hit ~ ~ ~ 0.819 0 0.574 2 0 force
particle enchanted_hit ~ ~ ~ 0.766 0 0.643 2 0 force
particle enchanted_hit ~ ~ ~ 0.707 0 0.707 2 0 force
particle enchanted_hit ~ ~ ~ 0.643 0 0.766 2 0 force
particle enchanted_hit ~ ~ ~ 0.574 0 0.819 2 0 force
particle enchanted_hit ~ ~ ~ 0.5 0 0.866 2 0 force
particle enchanted_hit ~ ~ ~ 0.423 0 0.906 2 0 force
particle enchanted_hit ~ ~ ~ 0.342 0 0.94 2 0 force
particle enchanted_hit ~ ~ ~ 0.259 0 0.966 2 0 force
particle enchanted_hit ~ ~ ~ 0.174 0 0.985 2 0 force
particle enchanted_hit ~ ~ ~ 0.087 0 0.996 2 0 force
particle enchanted_hit ~ ~ ~ 0.0 0 1.0 2 0 force
particle enchanted_hit ~ ~ ~ -0.087 0 0.996 2 0 force
particle enchanted_hit ~ ~ ~ -0.174 0 0.985 2 0 force
particle enchanted_hit ~ ~ ~ -0.259 0 0.966 2 0 force
particle enchanted_hit ~ ~ ~ -0.342 0 0.94 2 0 force
particle enchanted_hit ~ ~ ~ -0.423 0 0.906 2 0 force
particle enchanted_hit ~ ~ ~ -0.5 0 0.866 2 0 force
particle enchanted_hit ~ ~ ~ -0.574 0 0.819 2 0 force
particle enchanted_hit ~ ~ ~ -0.643 0 0.766 2 0 force
particle enchanted_hit ~ ~ ~ -0.707 0 0.707 2 0 force
particle enchanted_hit ~ ~ ~ -0.766 0 0.643 2 0 force
particle enchanted_hit ~ ~ ~ -0.819 0 0.574 2 0 force
particle enchanted_hit ~ ~ ~ -0.866 0 0.5 2 0 force
particle enchanted_hit ~ ~ ~ -0.906 0 0.423 2 0 force
particle enchanted_hit ~ ~ ~ -0.94 0 0.342 2 0 force
particle enchanted_hit ~ ~ ~ -0.966 0 0.259 2 0 force
particle enchanted_hit ~ ~ ~ -0.985 0 0.174 2 0 force
particle enchanted_hit ~ ~ ~ -0.996 0 0.087 2 0 force
particle enchanted_hit ~ ~ ~ -1.0 0 0.0 2 0 force
particle enchanted_hit ~ ~ ~ -0.996 0 -0.087 2 0 force
particle enchanted_hit ~ ~ ~ -0.985 0 -0.174 2 0 force
particle enchanted_hit ~ ~ ~ -0.966 0 -0.259 2 0 force
particle enchanted_hit ~ ~ ~ -0.94 0 -0.342 2 0 force
particle enchanted_hit ~ ~ ~ -0.906 0 -0.423 2 0 force
particle enchanted_hit ~ ~ ~ -0.866 0 -0.5 2 0 force
particle enchanted_hit ~ ~ ~ -0.819 0 -0.574 2 0 force
particle enchanted_hit ~ ~ ~ -0.766 0 -0.643 2 0 force
particle enchanted_hit ~ ~ ~ -0.707 0 -0.707 2 0 force
particle enchanted_hit ~ ~ ~ -0.643 0 -0.766 2 0 force
particle enchanted_hit ~ ~ ~ -0.574 0 -0.819 2 0 force
particle enchanted_hit ~ ~ ~ -0.5 0 -0.866 2 0 force
particle enchanted_hit ~ ~ ~ -0.423 0 -0.906 2 0 force
particle enchanted_hit ~ ~ ~ -0.342 0 -0.94 2 0 force
particle enchanted_hit ~ ~ ~ -0.259 0 -0.966 2 0 force
particle enchanted_hit ~ ~ ~ -0.174 0 -0.985 2 0 force
particle enchanted_hit ~ ~ ~ -0.087 0 -0.996 2 0 force
particle enchanted_hit ~ ~ ~ -0.0 0 -1.0 2 0 force
particle enchanted_hit ~ ~ ~ 0.087 0 -0.996 2 0 force
particle enchanted_hit ~ ~ ~ 0.174 0 -0.985 2 0 force
particle enchanted_hit ~ ~ ~ 0.259 0 -0.966 2 0 force
particle enchanted_hit ~ ~ ~ 0.342 0 -0.94 2 0 force
particle enchanted_hit ~ ~ ~ 0.423 0 -0.906 2 0 force
particle enchanted_hit ~ ~ ~ 0.5 0 -0.866 2 0 force
particle enchanted_hit ~ ~ ~ 0.574 0 -0.819 2 0 force
particle enchanted_hit ~ ~ ~ 0.643 0 -0.766 2 0 force
particle enchanted_hit ~ ~ ~ 0.707 0 -0.707 2 0 force
particle enchanted_hit ~ ~ ~ 0.766 0 -0.643 2 0 force
particle enchanted_hit ~ ~ ~ 0.819 0 -0.574 2 0 force
particle enchanted_hit ~ ~ ~ 0.866 0 -0.5 2 0 force
particle enchanted_hit ~ ~ ~ 0.906 0 -0.423 2 0 force
particle enchanted_hit ~ ~ ~ 0.94 0 -0.342 2 0 force
particle enchanted_hit ~ ~ ~ 0.966 0 -0.259 2 0 force
particle enchanted_hit ~ ~ ~ 0.985 0 -0.174 2 0 force
particle enchanted_hit ~ ~ ~ 0.996 0 -0.087 2 0 force