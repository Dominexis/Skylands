
scoreboard players reset $combat.start pc.game

schedule clear sys:combat/turn/ally/clear
schedule clear sys:combat/turn/ally/use
schedule clear sys:combat/turn/enemy/clear
schedule clear sys:combat/turn/enemy/use
schedule clear sys:combat/turn/2
schedule clear sys:combat/turn/3

clear @a minecraft:paper[minecraft:custom_data~{pc:{category:"end_turn"}}]

$schedule function sys:combat/end/$(result)/use 1.5s