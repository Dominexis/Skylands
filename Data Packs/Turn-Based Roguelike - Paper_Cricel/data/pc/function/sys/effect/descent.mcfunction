
# if (buffer) :
execute if data storage pc:temp passive.current.buffer run return run function pc:sys/effect/descent/buffer_clear

# else :
scoreboard players set #value pc.main -1
function pc:sys/utils/math/calculate {id:'storage pc:temp passive.current.value'}
execute if score #var pc.main matches ..0 run data remove storage pc:temp passive.current