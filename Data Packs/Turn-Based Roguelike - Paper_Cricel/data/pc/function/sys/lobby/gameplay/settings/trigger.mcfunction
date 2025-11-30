
# effect
execute if score @s pc.trigger matches 10001 store success storage pc:settings gameplay.tutorial byte 1 unless data storage pc:settings {gameplay:{tutorial:true}}

function pc:sys/lobby/gameplay/settings/refresh

