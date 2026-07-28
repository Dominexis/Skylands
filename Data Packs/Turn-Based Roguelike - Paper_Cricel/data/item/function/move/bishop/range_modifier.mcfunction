
execute unless data storage pc:temp range{mode:'in_range'} run return fail
execute unless items entity 20060423-0-0-1-1 contents *[custom_data~{pc:{category:'skill'}}] run return fail

data modify storage pc:temp range.type set value '1x1d'
function sys:grid/range/use