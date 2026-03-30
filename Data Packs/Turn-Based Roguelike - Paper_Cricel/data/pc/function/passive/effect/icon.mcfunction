
data modify storage pc:temp hover.effect set from entity @s data.effect

# Effects
execute if data entity @s data.effect.weakness run data modify storage pc:temp hover.display.effect append value [{text:"\u0001"},{nbt:"hover.effect.weakness","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.vulnerable run data modify storage pc:temp hover.display.effect append value [{text:"\u0002"},{nbt:"hover.effect.vulnerable","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.regeneration run data modify storage pc:temp hover.display.effect append value [{text:"\u0003"},{nbt:"hover.effect.regeneration","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.critical_hit run data modify storage pc:temp hover.display.effect append value [{text:"\u0004"},{nbt:"hover.effect.critical_hit","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.robust run data modify storage pc:temp hover.display.effect append value [{text:"\u0005"},{nbt:"hover.effect.robust","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.revive run data modify storage pc:temp hover.display.effect append value [{text:"\u0006"},{nbt:"hover.effect.revive","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.strength run data modify storage pc:temp hover.display.effect append value [{text:"\u0007"},{nbt:"hover.effect.strength","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.no_heal run data modify storage pc:temp hover.display.effect append value [{text:"\u0008"},{nbt:"hover.effect.no_heal","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.entangled run data modify storage pc:temp hover.display.effect append value [{text:"\u0009"},{nbt:"hover.effect.entangled","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.poison run data modify storage pc:temp hover.display.effect append value [{text:"\u0010"},{nbt:"hover.effect.poison","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.rusty run data modify storage pc:temp hover.display.effect append value [{text:"\u0011"},{nbt:"hover.effect.rusty","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.strength_down run data modify storage pc:temp hover.display.effect append value [{text:"\u0012"},{nbt:"hover.effect.strength_down","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.oneuse_strength run data modify storage pc:temp hover.display.effect append value [{text:"\u0013"},{nbt:"hover.effect.oneuse_strength","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.stone_form run data modify storage pc:temp hover.display.effect append value [{text:"\u0014"},{nbt:"hover.effect.stone_form","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.erosion run data modify storage pc:temp hover.display.effect append value [{text:"\u0015"},{nbt:"hover.effect.erosion","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.dragon_scale run data modify storage pc:temp hover.display.effect append value [{text:"\u0016"},{nbt:"hover.effect.dragon_scale","storage":"pc:temp","shadow_color":2082677539}]

# Powers
execute if data entity @s data.effect.frighten run data modify storage pc:temp hover.display.effect append value [{text:"\u1001"}]
execute if data entity @s data.effect.heal_overdose run data modify storage pc:temp hover.display.effect append value [{text:"\u1002"}]
execute if data entity @s data.effect.shield_buffer run data modify storage pc:temp hover.display.effect append value [{text:"\u1003"}]
execute if data entity @s data.effect.glass_cannon run data modify storage pc:temp hover.display.effect append value [{text:"\u1004"}]
execute if data entity @s data.effect.thorn run data modify storage pc:temp hover.display.effect append value [{text:"\u1005"}]
execute if data entity @s data.effect.undying_shell run data modify storage pc:temp hover.display.effect append value [{text:"\u1006"}]
execute if data entity @s data.effect.enraged run data modify storage pc:temp hover.display.effect append value [{text:"\u1007"}]

# Area Effects
execute if data entity @s data.effect.fire_area run data modify storage pc:temp hover.display.effect append value [{text:"\u2001"},{nbt:"hover.effect.fire_area","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.rail_area run data modify storage pc:temp hover.display.effect append value [{text:"\u2002"},{nbt:"hover.effect.rail_area","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.crimson_area run data modify storage pc:temp hover.display.effect append value [{text:"\u2003"},{nbt:"hover.effect.crimson_area","storage":"pc:temp","shadow_color":2082677539}]
execute if data entity @s data.effect.dragonbreath_area run data modify storage pc:temp hover.display.effect append value [{text:"\u2004"},{nbt:"hover.effect.dragonbreath_area","storage":"pc:temp","shadow_color":2082677539}]
