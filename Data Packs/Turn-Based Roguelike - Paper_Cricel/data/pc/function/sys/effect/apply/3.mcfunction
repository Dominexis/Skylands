
# if (no record) :
$execute unless data storage pc:temp curr_effects[{id:'$(id)'}] run return run data modify storage pc:temp curr_effects append from storage pc:temp effect

# elif (type == 'unstackable') : no value & cannot stack
$execute if data storage pc:temp curr_effects[{id:'$(id)',type:'unstackable'}] run return fail

# elif (type == 'stackable') : no value but stackable
$execute if data storage pc:temp curr_effects[{id:'$(id)',type:'stackable'}] run return run data modify storage pc:temp curr_effects append from storage pc:temp effect

# else : default
$execute store result score #var pc.main run data get storage pc:temp curr_effects[{id:'$(id)'}].value
scoreboard players operation #var pc.main += #operation pc.main

    # if (var == 0) :
        # if (type == 'include_zero') :
$execute if score #var pc.main matches 0 if data storage pc:temp curr_effects[{id:'$(id)',type:'include_zero'}] run return run data modify storage pc:temp curr_effects[{id:'$(id)'}].value set value 0

        # else :
$execute if score #var pc.main matches 0 run return run data remove storage pc:temp curr_effects[{id:'$(id)'}]

    # else :
$execute store result storage pc:temp curr_effects[{id:'$(id)'}].value int 1 run scoreboard players get #var pc.main