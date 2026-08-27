
# Rune altar crafting item frames
summon minecraft:glow_item_frame -2319 62 2318 {Invulnerable:1b,ItemRotation:4b,Facing:1b,Tags:["sanct.altar","sl.processed"]}
summon minecraft:glow_item_frame -2318 62 2318 {Invulnerable:1b,ItemRotation:4b,Facing:1b,Tags:["sanct.altar","sl.processed"]}
summon minecraft:glow_item_frame -2319 62 2319 {Invulnerable:1b,ItemRotation:4b,Facing:1b,Tags:["sanct.altar","sl.processed"]}
summon minecraft:glow_item_frame -2318 62 2319 {Invulnerable:1b,ItemRotation:4b,Facing:1b,Tags:["sanct.altar","sl.processed"]}

# Rune altar decoration item frames
summon minecraft:glow_item_frame -2320 61 2318 {Invisible:1b,Fixed:1b,Facing:4b,Tags:["sl.processed"],Item:{id:"minecraft:blade_pottery_sherd"}}
summon minecraft:glow_item_frame -2320 61 2319 {Invisible:1b,Fixed:1b,Facing:4b,Tags:["sl.processed"],Item:{id:"minecraft:blade_pottery_sherd"}}
summon minecraft:glow_item_frame -2319 61 2317 {Invisible:1b,Fixed:1b,Facing:2b,Tags:["sl.processed"],Item:{id:"minecraft:blade_pottery_sherd"}}
summon minecraft:glow_item_frame -2318 61 2317 {Invisible:1b,Fixed:1b,Facing:2b,Tags:["sl.processed"],Item:{id:"minecraft:blade_pottery_sherd"}}
summon minecraft:glow_item_frame -2319 61 2320 {Invisible:1b,Fixed:1b,Facing:3b,Tags:["sl.processed"],Item:{id:"minecraft:blade_pottery_sherd"}}
summon minecraft:glow_item_frame -2318 61 2320 {Invisible:1b,Fixed:1b,Facing:3b,Tags:["sl.processed"],Item:{id:"minecraft:blade_pottery_sherd"}}
summon minecraft:glow_item_frame -2317 61 2318 {Invisible:1b,Fixed:1b,Facing:5b,Tags:["sl.processed"],Item:{id:"minecraft:blade_pottery_sherd"}}
#summon minecraft:glow_item_frame -2317 61 2319 {Invisible:1b,Fixed:1b,Facing:5b,Tags:["sl.processed"],Item:{id:"minecraft:blade_pottery_sherd"}}


# Paintings
summon minecraft:painting -2314 70 2308 {Tags:["sl.processed"],Invulnerable:1b,facing:2b,variant:"minecraft:aztec"}
summon minecraft:painting -2316 72 2306 {Tags:["sl.processed"],Invulnerable:1b,facing:3b,variant:"minecraft:courbet"}

summon minecraft:painting -2310 70 2316 {Tags:["sl.processed"],Invulnerable:1b,facing:2b,variant:"minecraft:lowmist"}

summon minecraft:painting -2317 70 2310 {Tags:["sl.processed"],Invulnerable:1b,variant:"minecraft:courbet"}
summon minecraft:painting -2317 72 2310 {Tags:["sl.processed"],Invulnerable:1b,variant:"minecraft:courbet"}
summon minecraft:painting -2322 71 2313 {Tags:["sl.processed"],Invulnerable:1b,facing:3b,variant:"minecraft:aztec"}

summon minecraft:painting -2313 70 2318 {Tags:["sl.processed"],Invulnerable:1b,variant:"minecraft:lowmist"}

summon minecraft:painting -2321 70 2319 {Tags:["sl.processed"],Invulnerable:1b,facing:1b,variant:"minecraft:aztec"}
summon minecraft:painting -2322 71 2318 {Tags:["sl.processed"],Invulnerable:1b,variant:"minecraft:courbet"}

summon minecraft:painting -2324 71 2311 {Tags:["sl.processed"],Invulnerable:1b,facing:1b,variant:"minecraft:aztec"}
summon minecraft:painting -2324 70 2311 {Tags:["sl.processed"],Invulnerable:1b,facing:1b,variant:"minecraft:courbet"}
summon minecraft:painting -2324 71 2313 {Tags:["sl.processed"],Invulnerable:1b,facing:1b,variant:"minecraft:lowmist"}

# Flower pot hitboxes so players can't take plants
summon minecraft:interaction -2323 84 2315 {width:0.4,height:0.4}
summon minecraft:interaction -2320 83 2317 {width:0.4,height:0.4}
summon minecraft:interaction -2316 83 2317 {width:0.4,height:0.4}
summon minecraft:interaction -2314 83 2310 {width:0.4,height:0.4}

# Decorated pot hitboxes so players can't destroy them
summon minecraft:armor_stand -2323 82.5 2311 {Invulnerable:1b,NoGravity:1b,Invisible:1b,DisabledSlots:4144959,attributes:[{id:"minecraft:scale",base:1.8}]}