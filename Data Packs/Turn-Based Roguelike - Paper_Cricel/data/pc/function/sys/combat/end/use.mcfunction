
scoreboard players reset $combat.start pc.game

schedule clear pc:sys/combat/turn/ally/clear
schedule clear pc:sys/combat/turn/ally/use
schedule clear pc:sys/combat/turn/enemy/clear
schedule clear pc:sys/combat/turn/enemy/use
schedule clear pc:sys/combat/turn/2
schedule clear pc:sys/combat/turn/3

clear @a[x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0,predicate=sl:player] minecraft:paper[minecraft:custom_data~{pc:{category:"end_turn"}}]

$function pc:sys/combat/end/$(result)/converted_schedule