
scoreboard players remove #weight pc.main 1
data modify storage pc:temp processed_intents append from storage pc:temp intent.intents[0].id
execute if score #weight pc.main matches 1.. run return run function pc:sys/entity/intent/summon/3c