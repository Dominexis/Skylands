
# effect
function pc:sys/player/owner/find

scoreboard players operation #damage pc.main = @p[predicate=sl:player,tag=pc.sys.passive,x=2048.0,y=-130.0,z=5120.0,dx=512.0,dy=450.0,dz=512.0] pc.ep
scoreboard players operation #damage pc.main *= #20 sl.value

function pc:sys/player/owner/clear

# fx