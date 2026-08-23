
function pc:sys/entity/schedule/use {func:"function pc:entity/ender_eye/summon1/2",delay:5}
function pc:sys/entity/schedule/use {func:"execute as @e[tag=pc.intent.now,type=marker] if function pc:sys/grid/range/type/any-cross at @s positioned ~ ~1.5 ~ run function pc:entity/ender_eye/summon1/3",delay:25}
function pc:sys/entity/schedule/use {func:"function pc:sys/combat/turn/end_act",delay:25}