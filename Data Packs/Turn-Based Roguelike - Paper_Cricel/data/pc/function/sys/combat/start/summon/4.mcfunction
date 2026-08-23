
$function pc:entity/$(id)/summon

# fx
execute if data storage pc:temp {lair:{type:"mob"}} positioned ~ ~0.5 ~ run function pc:sys/fx/summon_mob/use