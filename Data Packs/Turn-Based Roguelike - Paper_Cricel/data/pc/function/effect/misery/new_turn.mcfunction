
data modify storage pc:temp passive.queue append value {"func":"function pc:effect/misery/2"}

# fx
playsound minecraft:entity.vex.hurt master @a ~ ~1024 ~ 0 1 1
playsound pc:sys/blood_hit master @a ~ ~1024 ~ 0 0 1
playsound minecraft:block.brewing_stand.brew master @a ~ ~1024 ~ 0 1.5 1
particle minecraft:dust{color:[0.5,0.1,0.1],scale:3} ~ ~ ~ 0.4 0.3 0.4 0 10 force