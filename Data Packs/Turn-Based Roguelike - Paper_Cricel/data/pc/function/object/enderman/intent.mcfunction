
# effect
scoreboard players operation #hp.perc pc.main = @s pc.hp
scoreboard players operation #hp.perc pc.main *= #100 sl.value
scoreboard players operation #hp.perc pc.main /= @s pc.hpmax
execute if score #hp.perc pc.main matches ..50 unless entity @s[tag=pc.enderman.interphase] run return run data modify entity @s data.intent.type set value ["buff2"]

data modify entity @s data.intent.type set value ["attack1","walk1","walk1"]
execute if function pc:sys/grid/detect/ally3x3 run data modify entity @s data.intent.type set value ["attack2"]