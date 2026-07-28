## (storage) pc:temp grid.avail {spac:boolean, hole:boolean, wall:boolean}
## (exe) grid (data.type)

execute if data entity @s data{type:'spac'} run return run execute unless data storage pc:temp grid.avail{spac:0b}
execute if data entity @s data{type:'hole'} run return run execute unless data storage pc:temp grid.avail{hole:0b}
execute if data entity @s data{type:'wall'} run return run execute if data storage pc:temp grid.avail{wall:1b}