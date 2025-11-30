
execute unless score #turn.mobs_turn pc.main matches 1 run function pc:sys/object/turn/ally/next
execute if score #turn.mobs_turn pc.main matches 1 run function pc:sys/object/turn/mob/next