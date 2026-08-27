
# if (interrupt) :
$execute if entity @s[tag=pc.intent.interrupt] run return run function pc:sys/entity/intent/$(intent)/use

# else :
$function pc:entity/$(id)/$(intent)/use