
$function pc:entity/$(id)/$(passive)

$function pc:sys/entity/$(team)/$(passive)
$function pc:sys/entity/$(passive)

# NOTE : Shield need to be the last one to wait for damage modifiers
$execute if score @s pc.shield matches 1.. run function pc:sys/entity/shield/$(passive)