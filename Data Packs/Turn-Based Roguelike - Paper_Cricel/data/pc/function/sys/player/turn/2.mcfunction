
# effect
tag @s add pc.your_turn.queue

# fx
title @s times 0 40 20
scoreboard players set @s pc.title 60
title @s title [{text:"Round ",color:"#ECBA32",type:"text"},{score:{name:"$game.round",objective:"pc.main"},type:"score"}]