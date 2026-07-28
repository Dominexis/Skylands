
# move
execute if items entity @s container.0 * unless items entity @s container.0 *[custom_data~{pc:{category:'move'}}] run return run function sys:rest_area/start_button/on_click/invalid {slot:1}

# repair
execute if items entity @s container.1 * unless items entity @s container.1 *[custom_data~{pc:{category:'repair'}}] run return run function sys:rest_area/start_button/on_click/invalid {slot:2}

# skills
execute if items entity @s container.2 * unless items entity @s container.2 *[custom_data~{pc:{category:'skill'}}] run return run function sys:rest_area/start_button/on_click/invalid {slot:3}
execute if items entity @s container.3 * unless items entity @s container.3 *[custom_data~{pc:{category:'skill'}}] run return run function sys:rest_area/start_button/on_click/invalid {slot:4}
execute if items entity @s container.4 * unless items entity @s container.4 *[custom_data~{pc:{category:'skill'}}] run return run function sys:rest_area/start_button/on_click/invalid {slot:5}
execute if items entity @s container.5 * unless items entity @s container.5 *[custom_data~{pc:{category:'skill'}}] run return run function sys:rest_area/start_button/on_click/invalid {slot:6}
execute if items entity @s container.6 * unless items entity @s container.6 *[custom_data~{pc:{category:'skill'}}] run return run function sys:rest_area/start_button/on_click/invalid {slot:7}