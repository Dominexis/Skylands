
execute if data storage pc:temp item{category:'head'} run return 1
execute if data storage pc:temp item{category:'chest'} run return 1
execute if data storage pc:temp item{category:'legs'} run return 1
execute if data storage pc:temp item{category:'feet'} run return 1
execute unless data storage pc:temp item.ep.base run return 1
return fail