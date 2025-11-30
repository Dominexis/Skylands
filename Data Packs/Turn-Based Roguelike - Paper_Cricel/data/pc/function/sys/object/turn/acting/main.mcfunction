
# effect
scoreboard players remove $game.acting_time pc.main 1
execute if score $game.acting_time pc.main matches ..0 run function pc:sys/object/turn/acting/end