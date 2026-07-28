
scoreboard players set #damage pc.main 4
function sys:entity/dmg/atker

scoreboard players set #is_repel pc.main 0
execute as @e[predicate=sys:entity/victim,limit=1] at @s run function item:move/minecart/anyone/victim
function item:move/minecart/anyone/2

# fx
playsound sys:minecart_hit master @a ~ ~1024 ~ 0 1 0.2
playsound minecraft:entity.player.hurt_freeze master @a ~ ~1024 ~ 0 0 1

particle minecraft:explosion ~ ~0.5 ~ 0 0 0 0 0 force
particle minecraft:cloud ~ ~0.25 ~ 0.1 0.4 0.1 0.1 20 force

particle minecraft:crit ~ ~0.5 ~ 1.0 0 0.0 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.996 0 0.087 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.985 0 0.174 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.966 0 0.259 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.94 0 0.342 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.906 0 0.423 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.866 0 0.5 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.819 0 0.574 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.766 0 0.643 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.707 0 0.707 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.643 0 0.766 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.574 0 0.819 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.5 0 0.866 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.423 0 0.906 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.342 0 0.94 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.259 0 0.966 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.174 0 0.985 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.087 0 0.996 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.0 0 1.0 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.087 0 0.996 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.174 0 0.985 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.259 0 0.966 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.342 0 0.94 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.423 0 0.906 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.5 0 0.866 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.574 0 0.819 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.643 0 0.766 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.707 0 0.707 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.766 0 0.643 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.819 0 0.574 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.866 0 0.5 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.906 0 0.423 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.94 0 0.342 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.966 0 0.259 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.985 0 0.174 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.996 0 0.087 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -1.0 0 0.0 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.996 0 -0.087 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.985 0 -0.174 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.966 0 -0.259 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.94 0 -0.342 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.906 0 -0.423 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.866 0 -0.5 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.819 0 -0.574 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.766 0 -0.643 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.707 0 -0.707 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.643 0 -0.766 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.574 0 -0.819 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.5 0 -0.866 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.423 0 -0.906 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.342 0 -0.94 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.259 0 -0.966 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.174 0 -0.985 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.087 0 -0.996 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ -0.0 0 -1.0 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.087 0 -0.996 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.174 0 -0.985 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.259 0 -0.966 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.342 0 -0.94 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.423 0 -0.906 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.5 0 -0.866 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.574 0 -0.819 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.643 0 -0.766 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.707 0 -0.707 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.766 0 -0.643 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.819 0 -0.574 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.866 0 -0.5 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.906 0 -0.423 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.94 0 -0.342 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.966 0 -0.259 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.985 0 -0.174 1.5 0 force
particle minecraft:crit ~ ~0.5 ~ 0.996 0 -0.087 1.5 0 force