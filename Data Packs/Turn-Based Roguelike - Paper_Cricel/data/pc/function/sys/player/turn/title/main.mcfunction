
# effect
    # Attribute
function pc:sys/player/turn/title/energy
function pc:sys/player/turn/title/durability

    # Display
title @s actionbar [{text:""},{font:"pc:default",text:"\uf010\uf008\uf00b2\uf200\uf030\uf009","shadow_color": 0},{text: "◇"},{nbt:"actionbar.display.energy","storage": "pc:temp","interpret": true},{text: " "},{nbt:"actionbar.display.durability","storage": "pc:temp","interpret": true},{text: " ◇"}]
data remove storage pc:temp actionbar