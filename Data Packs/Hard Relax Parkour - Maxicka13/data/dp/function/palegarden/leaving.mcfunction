tellraw @s ["","You are leaving the Pale Forest...\n",{"color":"#aa0000","text":"Something pulls you back.\n\n"},"\nВы покидаете пределы Бледного леса…\n",{"color":"#aa0000","text":"Что-то тянет вас обратно.\n"}]
tp @s @e[tag=spawnpoint_pg,limit=1]
tellraw @s ["", "The forest does not let you leave. \n\n", "Лес не отпускает вас."]