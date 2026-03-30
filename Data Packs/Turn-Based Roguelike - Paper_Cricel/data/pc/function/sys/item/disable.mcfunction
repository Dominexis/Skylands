# exe : player

# effect
execute if data storage pc:temp effect.disable.move run clear @s paper[custom_data~{pc:{category:'move'}}]
execute if data storage pc:temp effect.disable.skill1 run clear @s paper[custom_data~{pc:{category:'skill1'}}]
execute if data storage pc:temp effect.disable.skill2 run clear @s paper[custom_data~{pc:{category:'skill2'}}]
execute if data storage pc:temp effect.disable.skill3 run clear @s paper[custom_data~{pc:{category:'skill3'}}]
execute if data storage pc:temp effect.disable.repair run clear @s paper[custom_data~{pc:{category:'repair'}}]

data remove storage pc:temp effect