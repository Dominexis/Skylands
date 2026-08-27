
# if (!weight) :
execute unless data storage pc:temp intent.intents[0].weight run return run data modify storage pc:temp processed_intents append from storage pc:temp intent.intents[0].id

# else :
execute store result score #weight pc.main run data get storage pc:temp intent.intents[0].weight
function pc:sys/entity/intent/summon/3c