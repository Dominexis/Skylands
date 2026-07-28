
# if (interrupt) :
$execute if entity @s[tag=pc.intent.interrupt] run return run function sys:entity/intent/$(intent)/use

# else :
$function entity:$(id)/$(intent)/use