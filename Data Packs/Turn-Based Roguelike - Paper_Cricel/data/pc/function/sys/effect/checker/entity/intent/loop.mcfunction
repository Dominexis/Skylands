
data modify storage pc:temp infocheck.effects append value {id:""}
data modify storage pc:temp infocheck.effects[-1].id set from storage pc:temp infocheck.intents.text[0]

data remove storage pc:temp infocheck.intents.text[0]
execute if data storage pc:temp infocheck.intents.text[0] run return run function pc:sys/effect/checker/entity/intent/loop

# if (extra) :
execute if data storage pc:temp infocheck.intents.extra run data modify storage pc:temp infocheck.effects append from storage pc:temp infocheck.intents.extra[]