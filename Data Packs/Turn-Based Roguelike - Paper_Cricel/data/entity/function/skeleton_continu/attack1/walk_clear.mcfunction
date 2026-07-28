
scoreboard players set #buffer pc.main 1
function sys:entity/schedule/use {func:"rotate @s facing entity @e[tag=pc.intent.now,tag=pc.intent.attack,type=marker,limit=1] feet",delay:5}
function sys:entity/schedule/use {func:"function entity:skeleton_continu/attack1/fx/use",delay:10}
function sys:entity/schedule/use {func:"function entity:skeleton_continu/attack1/fx/use",delay:15}
function sys:entity/schedule/use {func:"scoreboard players reset #buffer pc.main",delay:20}
function sys:entity/schedule/use {func:"function entity:skeleton_continu/attack1/fx/use",delay:20}