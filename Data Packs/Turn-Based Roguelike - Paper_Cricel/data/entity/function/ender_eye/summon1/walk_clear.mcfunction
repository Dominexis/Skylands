
function sys:entity/schedule/use {func:"function entity:ender_eye/summon1/2",delay:5}
function sys:entity/schedule/use {func:"execute as @e[tag=pc.intent.now,type=marker] if function sys:grid/range/type/any-cross at @s positioned ~ ~1.5 ~ run function entity:ender_eye/summon1/3",delay:25}
function sys:entity/schedule/use {func:"function sys:combat/turn/end_act",delay:25}