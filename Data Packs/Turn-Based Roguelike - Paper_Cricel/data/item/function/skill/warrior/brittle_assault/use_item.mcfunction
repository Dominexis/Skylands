
data modify storage pc:temp passive.queue append value {func:"function item:skill/warrior/brittle_assault/1/add with storage pc:temp passive.queue[0]"}
data modify storage pc:temp passive.queue[-1].hotbar set from storage pc:temp passive.current.hotbar