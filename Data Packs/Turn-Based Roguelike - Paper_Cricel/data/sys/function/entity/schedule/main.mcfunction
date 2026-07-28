
data modify storage pc:temp schedule.schedules set from entity @s data.schedule
data remove entity @s data.schedule

function sys:entity/schedule/2

execute unless data entity @s data.schedule run tag @s remove pc.sys.entity.schedule
data remove storage pc:temp schedule