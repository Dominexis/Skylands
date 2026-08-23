
# if (no block to escape) :
data modify storage pc:temp range set value {type:'line',mode:"detect",target:"space",facing:{target:"ally",rotate:180},line:{block:1}}
execute if function pc:sys/grid/range/use run data modify storage pc:temp intent.intents set value [{id:"attack1"}]

# else :
data modify storage pc:temp intent.intents set value [{id:"walk2"}]