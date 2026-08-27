
# ascension :
execute if data storage pc:settings gameplay{tough_enemies:1b} if data storage pc:temp summon{team:'enemy'} store result score @s pc.hp store result score @s pc.hpmax run return run data get storage pc:temp summon.hpmax 1.1

# else :
execute store result score @s pc.hp store result score @s pc.hpmax run data get storage pc:temp summon.hpmax