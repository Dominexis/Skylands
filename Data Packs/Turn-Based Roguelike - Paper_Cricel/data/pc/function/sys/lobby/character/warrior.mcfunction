
# effect
    # Attribute
data modify storage pc:data root.character set value Warrior
scoreboard players set @s pc.ep 3
scoreboard players set @s pc.epmax 3
scoreboard players set @s pc.hp 200
scoreboard players set @s pc.hpmax 200

    # Inventory
data modify storage pc:data root.object.hotbar set value \
    {move:'basic', skill1:'strike', skill2:'bandage', skill3:'-', repair:'basic' \
    ,head:'-', chest:'-', legs:'-', feet:'-'}