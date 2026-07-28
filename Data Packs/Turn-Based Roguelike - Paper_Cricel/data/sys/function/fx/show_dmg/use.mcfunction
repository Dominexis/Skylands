
data modify storage pc:temp show_dmg.display set value [{score:{name:"#damage",objective:"pc.main"}}]
execute if data storage pc:temp damage{mode:"heal"} run data modify storage pc:temp show_dmg.display[0].color set value "green"

execute anchored eyes positioned ^ ^1 ^ summon text_display run function sys:fx/show_dmg/data

data remove storage pc:temp show_dmg