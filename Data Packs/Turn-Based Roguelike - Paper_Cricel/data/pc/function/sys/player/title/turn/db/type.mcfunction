
# if (db.max == inf) :
execute if data storage pc:temp {actionbar:{db:{max:-1}}} run return run data modify storage pc:temp actionbar.display.db_part set value [{text:"[ɴ/ᴀ]"}]

# else :
data modify storage pc:temp actionbar.display.db_part set value [{text:"["},{nbt:"actionbar.db.value",storage:"pc:temp"},{text:"/"},{nbt:"actionbar.db.max",storage:"pc:temp"},{text:"]"}]