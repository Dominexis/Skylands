scoreboard players set @s did.player.quota 0
playsound entity.experience_orb.pickup master @s ~ ~ ~
tellraw @s {"translate": "did.game.credits","with": [{"text":"Discord Server", "color": "light_purple", "underlined": true, "click_event": {"action": "open_url",url: "https://tinyurl.com/devscube"}, hover_event: {"action": "show_text",value: {"text": "https://tinyurl.com/devscube"}}}]}
execute positioned -3014.50 0.50 -3639.50 align xyz positioned ~0.5 ~0.5 ~0.5 at @n[type=marker, tag=did.marker.main,distance=..1] run execute positioned ~98 ~2 ~-100 positioned ~1 ~-.5 ~-1 run tp @s ~ ~ ~ 0 0