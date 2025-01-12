# Transform input to make it repeat like a sinewave
scoreboard players operation #math sl.value = #input sl.value
scoreboard players add #math sl.value 1000
scoreboard players operation #math sl.value %= #2000 sl.value
scoreboard players remove #math sl.value 1000
execute if score #math sl.value matches ..-1 run scoreboard players operation #math sl.value *= #-1 sl.value

# Compute function
scoreboard players operation #output sl.value = #math sl.value
scoreboard players operation #output sl.value *= #math sl.value
scoreboard players operation #output sl.value /= #1000 sl.value
scoreboard players operation #math sl.value *= #output sl.value
scoreboard players operation #math sl.value /= #1000 sl.value
scoreboard players operation #output sl.value *= #3 sl.value
scoreboard players operation #math sl.value *= #2 sl.value
scoreboard players operation #output sl.value -= #math sl.value