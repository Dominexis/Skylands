
scoreboard players set #fx.count pc.main 0
function pc:sys/entity/schedule/use {func:"function pc:entity/bat_rusty/attack1/2",delay:0}
function pc:sys/entity/schedule/use {func:"function pc:entity/bat_rusty/attack1/2",delay:10}

# fx
playsound minecraft:entity.bat.takeoff master @a ~ ~1024 ~ 0 1 0.5