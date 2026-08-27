
scoreboard players set #buffer pc.main 1
function pc:sys/entity/schedule/use {func:"rotate @s facing entity @e[tag=pc.intent.now,tag=pc.intent.attack,type=marker,limit=1] feet",delay:5}
function pc:sys/entity/schedule/use {func:"function pc:entity/skeleton_continu/attack1/fx/use",delay:10}
function pc:sys/entity/schedule/use {func:"function pc:entity/skeleton_continu/attack1/fx/use",delay:15}
function pc:sys/entity/schedule/use {func:"scoreboard players reset #buffer pc.main",delay:20}
function pc:sys/entity/schedule/use {func:"function pc:entity/skeleton_continu/attack1/fx/use",delay:20}