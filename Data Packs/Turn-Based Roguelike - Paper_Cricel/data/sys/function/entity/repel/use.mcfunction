
# if (has object motion) :
scoreboard players operation #self pc.target.id = @s pc.entity.id
execute if entity @e[tag=pc.sys.object.motion,type=item,predicate=sys:owner/target,limit=1] run return fail

# else :
execute as 20060423-0-0-0-0 run function sys:entity/rotate/proofread45
execute rotated as 20060423-0-0-0-0 run return run function sys:entity/repel/2