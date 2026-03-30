# Force other players' books to close
execute as @a[x=-2368,y=-16,z=2240,dx=126,dy=158,dz=126,predicate=sl:player,advancements={sanct:book/open=true},predicate=sanct:inventory/book/holding_unresolved] unless entity @s[distance=0] run function sanct:book/open/timeout

schedule function sanct:book/open/timeout_schedule 10
schedule function sanct:book/open/clock 1

# Summon marker that checks if player moves or changes look direction
execute anchored eyes run summon minecraft:marker ^ ^ ^0.1 {Tags:["sanct.book_opened_position"]}
execute anchored eyes positioned ^ ^ ^0.1 run scoreboard players operation @e[type=minecraft:marker,tag=sanct.book_opened_position,distance=..0.0001,limit=1] sanct.id = @s sl.id

function sanct:book/build/build
item replace entity @s weapon.mainhand with minecraft:written_book[minecraft:written_book_content={author:"","title":""},minecraft:item_name="",minecraft:item_model="sanct:book_opened",minecraft:enchantment_glint_override=false,minecraft:tooltip_display={hide_tooltip:true},minecraft:custom_data={spellbook:1b}]
item modify entity @s weapon.mainhand sanct:book/build/build

stopsound @a[distance=..16] player minecraft:item.book.put
stopsound @a[distance=..16] ui minecraft:item.book.page_turn
playsound minecraft:item.book.page_turn ui @a[distance=..16]