
# intents
execute if function pc:sys/effect/checker/entity/intent/is run function pc:sys/effect/checker/entity/intent/loop
execute if score @s pc.shield matches 1.. run data modify storage pc:temp infocheck.effects append value {id:"shield"}

# effects
data modify storage pc:temp infocheck.effects append from entity @s data.effects[]