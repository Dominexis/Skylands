
# effect
$execute unless data storage pc:temp turn.effect.disable.move run function pc:sys/item/replace {loot:"pc:item/move/$(move)",slot:"entity @s container.0"}
$execute unless data storage pc:temp turn.effect.disable.skill1 run function pc:sys/item/replace {loot:"pc:item/skill/$(skill1)",slot:"entity @s container.1"}
$execute unless data storage pc:temp turn.effect.disable.skill2 run function pc:sys/item/replace {loot:"pc:item/skill/$(skill2)",slot:"entity @s container.2"}
$execute unless data storage pc:temp turn.effect.disable.skill3 run function pc:sys/item/replace {loot:"pc:item/skill/$(skill3)",slot:"entity @s container.3"}
$execute unless data storage pc:temp turn.effect.disable.repair run function pc:sys/item/replace {loot:"pc:item/repair/$(repair)",slot:"entity @s container.4"}

$loot replace entity @s armor.feet loot pc:item/feet/$(feet)
$loot replace entity @s armor.legs loot pc:item/legs/$(legs)
$loot replace entity @s armor.chest loot pc:item/chest/$(chest)
$loot replace entity @s armor.head loot pc:item/head/$(head)

item modify entity @s container.1 pc:skill/1
item modify entity @s container.2 pc:skill/2
item modify entity @s container.3 pc:skill/3