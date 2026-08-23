
execute if score @s pc.trigger matches 11001 store success storage pc:settings gameplay.tough_enemies byte 1 unless data storage pc:settings gameplay{tough_enemies:1b}
execute if score @s pc.trigger matches 11002 store success storage pc:settings gameplay.poor_elites byte 1 unless data storage pc:settings gameplay{poor_elites:1b}
execute if score @s pc.trigger matches 11003 store success storage pc:settings gameplay.lost_slots byte 1 unless data storage pc:settings gameplay{lost_slots:1b}
