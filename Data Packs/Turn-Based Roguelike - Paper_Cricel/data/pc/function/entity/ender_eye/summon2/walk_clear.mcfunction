
execute facing entity @e[tag=pc.intent.now,tag=pc.intent.summon,type=marker,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] feet run rotate @s ~ 0

function pc:sys/entity/schedule/use {func:"function pc:entity/ender_eye/summon2/2",delay:5}
function pc:sys/entity/schedule/use {func:"execute as @e[tag=pc.intent.now,type=marker] if function pc:sys/grid/range/type/any-cross at @s positioned ~ ~1.5 ~ run function pc:entity/ender_eye/summon2/3",delay:25}
function pc:sys/entity/schedule/use {func:"function pc:sys/combat/turn/end_act",delay:25}