
$execute store result score #money pc.main run random value $(money)
scoreboard players reset #money.extra pc.main

# ascension
execute if data storage pc:settings gameplay{poor_elites:1b} if data storage pc:game combat{type:'elite'} run function pc:sys/combat/end/win/money/ascension