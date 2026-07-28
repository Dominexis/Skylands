
$function entity:$(id)/$(passive)

$function sys:entity/$(team)/$(passive)
$function sys:entity/$(passive)

# NOTE : Shield need to be the last one to wait for damage modifiers
$execute if score @s pc.shield matches 1.. run function sys:entity/shield/$(passive)