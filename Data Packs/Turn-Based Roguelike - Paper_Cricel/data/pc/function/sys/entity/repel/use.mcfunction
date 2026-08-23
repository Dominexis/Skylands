
# if (has object motion) :
scoreboard players operation #self pc.target.id = @s pc.entity.id
execute if entity @e[tag=pc.sys.object.motion,type=item,predicate=pc:sys/owner/target,limit=1,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] run return fail

# else :
execute as 20060423-0-0-0-0 run function pc:sys/entity/rotate/proofread45
execute rotated as 20060423-0-0-0-0 run return run function pc:sys/entity/repel/2