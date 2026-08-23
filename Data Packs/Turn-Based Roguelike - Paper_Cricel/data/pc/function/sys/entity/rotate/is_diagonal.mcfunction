
rotate 20060423-0-0-0-0 ~ 0
execute as 20060423-0-0-0-0 if entity @s[y_rotation=88..92] run return fail
execute as 20060423-0-0-0-0 if entity @s[y_rotation=-92..-88] run return fail
execute as 20060423-0-0-0-0 if entity @s[y_rotation=178..182] run return fail
execute as 20060423-0-0-0-0 if entity @s[y_rotation=-2..2] run return fail

return 1