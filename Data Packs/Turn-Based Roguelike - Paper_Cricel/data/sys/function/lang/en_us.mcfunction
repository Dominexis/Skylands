
function sys:lang/reset

# System
data modify storage pc:lang sys.lore.ability set value {text: "Ability", color: "#F5B055", "bold": true}
data modify storage pc:lang sys.lore.details set value {text: "Details", color: "#3FA0E1", "bold": true}
data modify storage pc:lang sys.lore.db.value set value "ᴅᴜʀᴀʙɪʟɪᴛʏ"
data modify storage pc:lang sys.lore.category set value "ᴄᴀᴛᴇɢᴏʀʏ"
data modify storage pc:lang sys.lore.category_type.skill set value "ꜱᴋɪʟʟ"
data modify storage pc:lang sys.lore.category_type.move set value "ᴍᴏᴠᴇ"
data modify storage pc:lang sys.lore.category_type.repair set value "ʀᴇᴘᴀɪʀ"
data modify storage pc:lang sys.lore.category_type.head set value "ʜᴇᴀᴅ"
data modify storage pc:lang sys.lore.category_type.chest set value "ᴄʜᴇꜱᴛ"
data modify storage pc:lang sys.lore.category_type.legs set value "ʟᴇɢꜱ"
data modify storage pc:lang sys.lore.category_type.feet set value "ꜰᴇᴇᴛ"
data modify storage pc:lang sys.lore.category_type.option set value "ᴏᴘᴛɪᴏɴ"
data modify storage pc:lang sys.lore.price set value "ᴘʀɪᴄᴇ"
data modify storage pc:lang sys.lore.triggered set value {"text":"ᴛʀɪɢɢᴇʀᴇᴅ","color":"#72BD7A"}
data modify storage pc:lang sys.lore.untriggered set value {"text":"ɴᴏᴛ ᴛʀɪɢɢᴇʀᴇᴅ","color":"gray"}
data modify storage pc:lang sys.lore.rarity set value "ʀᴀʀɪᴛʏ"
data modify storage pc:lang sys.lore.rarity_type.basic set value {"text":"ʙᴀꜱɪᴄ","color":"gray"}
data modify storage pc:lang sys.lore.rarity_type.common set value {"text":"ᴄᴏᴍᴍᴏɴ","color":"#E7D9AD"}
data modify storage pc:lang sys.lore.rarity_type.rare set value {"text":"ʀᴀʀᴇ","color":"#7ABBF1"}
data modify storage pc:lang sys.lore.rarity_type.epic set value {"text":"ᴇᴘɪᴄ","color":"#D983F4"}
data modify storage pc:lang sys.item.feature.title set value {text: "Item Effect", color:"#A7DFA4", "bold": true}
data modify storage pc:lang sys.item.disable set value ["",{"color":"#ff6065","text":"Disabling Item "},{"color":"dark_gray","text":"["},{"color":"gray","nbt":"item.disable_turn","storage":"pc:temp","extra":[" Turn"]},{"color":"dark_gray","text":"(s)]"}]

    # Options
data modify storage pc:lang sys.item.option.money set value {text:"Money",color:"yellow"}
data modify storage pc:lang sys.lore.option.money set value {"text":"","italic":false,"color":"white","extra":["Gain ",{"nbt":"loot.money","storage":"pc:temp"}," ",{"text":"Money","color":"#F1DE61"},"."] }
data modify storage pc:lang sys.item.option.campfire.hpmax set value {"text": "Health Boost"}
data modify storage pc:lang sys.lore.option.campfire.hpmax set value {"text": "","italic": false,"color": "white","extra": ["Increase 3 ",{"text": "Max HP","color": "#F1DE61"},{"font":"sys:icon","text":"2","color": "white"},"."]}
data modify storage pc:lang sys.item.option.campfire.epmax set value {"text": "Energy Boost"}
data modify storage pc:lang sys.lore.option.campfire.epmax set value {"text": "","italic": false,"color": "white","extra": ["Increase 1 ",{"text": "Max Energy","color": "#F1DE61"},{"font":"sys:icon","text":"0","color": "white"},"."]}
data modify storage pc:lang sys.item.option.campfire.skill_slot set value {"text": "Slots Boost"}
data modify storage pc:lang sys.lore.option.campfire.skill_slot set value {"text": "","italic": false,"color": "white","extra": ["Increase 1 ",{"text": "Skill Slot","color": "#F1DE61"},"."]}
data modify storage pc:lang sys.item.option.tip set value " How to check effects?"
data modify storage pc:lang sys.lore.option.tip set value [[{italic:false,color:"white",text:""},{color:"blue",text:"Drop an item"},{color:"gray",text:" to "},{color:"yellow",text:"view its effects"}],[{italic:false,color:"white",text:""},{color:"gray",text:"(like "},{color:"#7ABFF1",text:"Strength"},{color:"gray",text:"). This "},{color:"yellow",text:"also works"}],[{italic:false,color:"white",text:""},{color:"gray",text:"for items "},{color:"blue",text:"dropped from a chest"},{color:"gray",text:"."}]]
data modify storage pc:lang sys.item.option.end_turn set value {"color": "#4AB274","text": "End Turn "}
data modify storage pc:lang sys.lore.option.end_turn set value "End your turn."
data modify storage pc:lang sys.item.option.tutorial.next_page set value {"text":"","italic":false,"color":"yellow","extra":["Page ",{"score":{"name":"$combat.tutorial.page","objective":"pc.game"}}," of 4"]}
data modify storage pc:lang sys.lore.option.tutorial.next_page set value {"text":"","italic":false,"color":"white","extra":["Turn to the next page."]}
data modify storage pc:lang sys.item.option.tutorial.prev_page set value {"text":"","italic":false,"color":"yellow","extra":["Page ",{"score":{"name":"$combat.tutorial.page","objective":"pc.game"}}," of 4"]}
data modify storage pc:lang sys.lore.option.tutorial.prev_page set value {"text":"","italic":false,"color":"white","extra":["Turn to the previous page."]}

    # Floating combat text (sys:fx/text/use)
data modify storage pc:lang sys.fx.booty set value {text:"Booty",color:"#7B7987"}
data modify storage pc:lang sys.fx.booty_wear set value {text:"Booty\nWears Off",color:"#7B7987"}
data modify storage pc:lang sys.fx.dragon_scale set value [{color:"#4EABC2",text:"D"},{color:"#4EA2C4",text:"r"},{color:"#4D98C7",text:"a"},{color:"#4D8FC9",text:"g"},{color:"#4C86CB",text:"o"},{color:"#4C7CCD",text:"n "},{color:"#4B73D0",text:"S"},{color:"#4B69D2",text:"c"},{color:"#4A60D4",text:"a"},{color:"#4A57D6",text:"l"},{color:"#4944DB",text:"e"}]
data modify storage pc:lang sys.fx.reflex set value {color:"#9adfe4",text:"Reflex"}
data modify storage pc:lang sys.fx.undying_shell set value {text:"Undying Shell",color:"#8c679c"}
data modify storage pc:lang sys.fx.rusty set value {text:"Rusty",color:"#5f361b"}
data modify storage pc:lang sys.fx.explosion set value {color:"#dd0a0a",text:"¡¡¡Explosion!!!"}
data modify storage pc:lang sys.fx.vigilance set value {text:"Vigilance",color:"#5872F4"}
data modify storage pc:lang sys.fx.power_through set value {color:"#ff7272",text:"Power Through"}
data modify storage pc:lang sys.fx.strength_wear set value {text:"Strength\nWears Off",color:"gray"}
data modify storage pc:lang sys.fx.revive set value {text:"Revive",color:"#e7c65d"}
data modify storage pc:lang sys.fx.iron_resolve set value {color:"#ffc299",text:"Iron Resolve"}
data modify storage pc:lang sys.fx.iron_resolve_wear set value {color:"gray",text:"Iron Resolve\nWears Off"}
data modify storage pc:lang sys.fx.ook_ook set value {text:"Ook-ook",color:"#B62F32"}
data modify storage pc:lang sys.fx.boredom set value {text:"Boredom",color:"#e0aa7a"}
data modify storage pc:lang sys.fx.gold_greed set value {text:"Gold Greed",color:"#F1DE61"}
data modify storage pc:lang sys.fx.frenzied set value {text:"Frenzied",color:"red"}
data modify storage pc:lang sys.fx.bias set value {color:"#844b25",text:"Bias"}
data modify storage pc:lang sys.fx.gentle_wear set value {color:"#91d4a4",text:"Gentle\nWears Off"}
data modify storage pc:lang sys.fx.jump set value {color:"#ffcb83",text:"Jump"}
data modify storage pc:lang sys.fx.parrying set value {text:"Parrying",color:"#e665e6"}
data modify storage pc:lang sys.fx.enmity set value {text:"Enmity",color:"#852FD1"}
data modify storage pc:lang sys.fx.vigor set value {color:"#ff9d3b",text:"Vigor"}
data modify storage pc:lang sys.fx.switch set value {color:"#cb70e4",text:"Switch"}
data modify storage pc:lang sys.fx.whet set value {text:"Whet",color:"#D28D44"}
data modify storage pc:lang sys.fx.stubborn set value {color:"#974bd5",text:"Stubborn"}
data modify storage pc:lang sys.fx.learned set value {color:"#a1b8be",text:"Learned"}
data modify storage pc:lang sys.fx.energized set value {color:"#fb9b47",text:"Energized"}
data modify storage pc:lang sys.fx.blocked set value {text:"Blocked",color:"#a4ada6"}
data modify storage pc:lang sys.fx.stunned set value {color:"#ecd578",text:"Stunned"}
data modify storage pc:lang sys.fx.interrupt set value {text:"Interrupt",color:"#9295f5"}
data modify storage pc:lang sys.fx.rally set value {text:"Rally",color:"#F0A1D5"}
function sys:lang/nouns/en_us

    # Lobby - author intro
data modify storage pc:lang sys.lobby.author.title set value [{text:" ◇ —— ",color:"gray",type:"text"},{text:"紙圓 (Paper_Cricel)",color:"#8ECFE3",bold:1b,type:"text"},{text:" —— ◇ ",color:"gray",type:"text"}]
data modify storage pc:lang sys.lobby.author.intro set value [" Hi there! I'm ",{color:"#BAE9E9",text:"紙圓 PaperCricel",type:"text"}," .w.\n\n This map is ",{color:"yellow",text:"heavily inspired",type:"text"}," by ",{color:"yellow",italic:1b,underlined:1b,text:"Slay the Spire",click_event:{action:"open_url",url:"https://youtu.be/dQw4w9WgXcQ"},hover_event:{action:"show_text",value:["",{text:"A Link.",type:"text"}]},type:"text"},", a game I love so much! But since Slay the Spire is so hard, I decided to make ",{color:"yellow",text:"my own turn-based roguelite",type:"text"},", ",{color:"blue",text:"changing up the gameplay",type:"text"}," and ",{color:"blue",text:"adding more fault tolerance",type:"text"},". I hope you'll enjoy the final result! (。・ω・。)\n\n I'll keep working on this to ",{color:"blue",text:"add more content",type:"text"}," when I have time, to turn it into a more ",{color:"yellow",text:"complete map",type:"text"},".\n Last, a huge thank you to ",{color:"gold",text:"Cosmic",type:"text"}," for promoting the ",{color:"aqua",text:"Skylands",type:"text"}," event and giving me this opportunity!\n ",{color:"gray",text:"But, uh... I probably won't be doing it a second time. It's just so tiring. -w-",type:"text"}]
data modify storage pc:lang sys.lobby.author.social set value {text:"Social Media",color:"#BE66DC",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.author.discord set value [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"\uf001 ","font":"sys:icon",shadow_color:0,color:"white",type:"text"},{text:"Discord : ",type:"text"},{text:"papercricel",click_event:{action:"copy_to_clipboard",value:"papercricel"},underlined:1b,hover_event:{action:"show_text",value:[{text:"Click Me Copy ID!",type:"text"}]},type:"text"}]
data modify storage pc:lang sys.lobby.author.twitter set value [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"\uf002 ","font":"sys:icon",shadow_color:0,color:"white",type:"text"},{text:"Twitter : ",type:"text"},{text:"@CricelPaper",click_event:{action:"open_url",url:"https://x.com/CricelPaper"},underlined:1b,hover_event:{action:"show_text",value:[{text:"Click Me Open Link!",type:"text"}]},type:"text"}]

    # Lobby - char select
data modify storage pc:lang sys.lobby.char.details set value {text:"Details",color:"#3FA0E1",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.char.warrior set value 'Warrior'

    # Lobby - maps menu
data modify storage pc:lang sys.lobby.maps.title set value {text:"Pick a Map",color:"#F07848",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.maps.minecraft set value {text:"[Minecraft]",color:"gray",click_event:{action:"run_command",command:"/trigger pc.trigger set 00001"},hover_event:{action:"show_text",value:[{text:"Click Me!"}]}}
data modify storage pc:lang sys.lobby.maps.coming_soon set value {text:"[Coming Soon]",color:"gray"}

    # Lobby - settings menu
data modify storage pc:lang sys.lobby.settings.title set value {text:"Settings",color:"#C5D4CF",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.settings.tutorial_label set value {text:"Tutorial Tips : "}
data modify storage pc:lang sys.lobby.settings.lang.label set value {text:"Language : "}
data modify storage pc:lang sys.lobby.settings.lang.option set value [{text:"",color:"gray"},{text:"[English]",color:"#72bd7a",click_event:{action:"run_command",command:"/trigger pc.trigger set 10002"},hover_event:{action:"show_text",value:[{text:"Click Me!"}]}}," | ",{text:"[繁體中文]",color:"gray",click_event:{action:"run_command",command:"/trigger pc.trigger set 10003"},hover_event:{action:"show_text",value:[{text:"點我！"}]}}," | ",{text:"[简体中文]",color:"gray",click_event:{action:"run_command",command:"/trigger pc.trigger set 10004"},hover_event:{action:"show_text",value:[{text:"点我！"}]}}]
data modify storage pc:lang sys.lobby.gameplay.locked set value {text:"* Cannot change settings while a game is running.",color:"red"}
data modify storage pc:lang sys.lobby.settings.false set value {text:"[False]",color:"red"}
data modify storage pc:lang sys.lobby.settings.true set value {text:"[True]",color:"#72bd7a"}

    # Lobby - settings menu : ascension
data modify storage pc:lang sys.lobby.settings.ascension.label set value {text:"Ascension : "}
data modify storage pc:lang sys.lobby.settings.ascension.tough_enemies.label set value [{text:"",font:"sys:modifier",hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.tough_enemies.desc",storage:"pc:lang",interpret:1b}}},{text:" Tough Enemies : ",font:"minecraft:default"}]
data modify storage pc:lang sys.lobby.settings.ascension.tough_enemies.desc set value ["All enemies have 10% more ",{text:"HP",color:"#F1DE61"},{text:"2",font:"sys:icon"},"."]
data modify storage pc:lang sys.lobby.settings.ascension.poor_elites.label set value [{text:"",font:"sys:modifier",hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.poor_elites.desc",storage:"pc:lang",interpret:1b}}},{text:" Poor Elites : ",font:"minecraft:default"}]
data modify storage pc:lang sys.lobby.settings.ascension.poor_elites.desc set value ["Elites drop 25% less ",{text:"Money",color:"#F1DE61"},{text:"3",font:"sys:icon"},"."]
data modify storage pc:lang sys.lobby.settings.ascension.lost_slots.label set value [{text:"",font:"sys:modifier",hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.lost_slots.desc",storage:"pc:lang",interpret:1b}}},{text:" Lost Slots : ",font:"minecraft:default"}]
data modify storage pc:lang sys.lobby.settings.ascension.lost_slots.desc set value ["Start with 1 fewer ",{text:"Skill Slot",color:"#F1DE61"},"."]

    # Lobby - world text_display labels
data modify storage pc:lang sys.lobby.ui.author set value {text:"Author",color:"white"}
data modify storage pc:lang sys.lobby.ui.click_me set value {text:"Click Me!"}
data modify storage pc:lang sys.lobby.ui.character set value {text:"Character",color:"white"}
data modify storage pc:lang sys.lobby.ui.gameplay set value {text:"Gameplay",color:"white"}
data modify storage pc:lang sys.lobby.ui.click_info set value {text:"* Click to Check Info *",color:"gray"}
data modify storage pc:lang sys.lobby.ui.click_choose set value {text:"* Click to Choose *",color:"gray"}
data modify storage pc:lang sys.lobby.ui.select_first set value {text:"* Please select character first *",color:"gray"}

    # Lobby - entity CustomName (copied via 'set from storage'; CustomName can't resolve nbt)
data modify storage pc:lang sys.lobby.name.author set value "Paper_Cricel"
data modify storage pc:lang sys.lobby.name.coming_soon.1 set value {text:"Spaghetti",color:"gray"}
data modify storage pc:lang sys.lobby.name.coming_soon.2 set value {text:"needs to be mixed with",color:"gray"}
data modify storage pc:lang sys.lobby.name.coming_soon.3 set value {text:"No.42 concrete",color:"gray"}
data modify storage pc:lang sys.lobby.name.start_game set value "Start the Game"
data modify storage pc:lang sys.lobby.name.game_started set value {text:"* The game has started *",color:"gray",type:"text"}
data modify storage pc:lang sys.lobby.name.maps set value "Maps"
data modify storage pc:lang sys.lobby.name.settings set value "Settings"

    # Final stats screen labels
data modify storage pc:lang sys.lobby.end.final_stats set value {text:"Final Stats",color:"#8ECFE3",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.end.victory set value {text:"Victory",color:"green",bold:true}
data modify storage pc:lang sys.lobby.end.death set value ["",{color:"red",bold:true,text:"Death"},{color:"dark_gray",text:" in Level "},{color:"dark_gray",score:{name:"$level",objective:"pc.game"}}]
data modify storage pc:lang sys.lobby.end.char_stat set value {color:"gray",text:" ᴄʜᴀʀ ꜱᴛᴀᴛ : "}
data modify storage pc:lang sys.lobby.end.hp set value [{color:"gray",text:" HP"},{"font":"sys:icon","text":"2",type:"text",color:"white"}]
data modify storage pc:lang sys.lobby.end.energy set value [{color:"gray",text:" Energy"},{"font":"sys:icon","text":"0",type:"text",color:"white"}]
data modify storage pc:lang sys.lobby.end.item_slot set value [{color:"gray",text:" "},{text:"\ue001",font:"sys:space"},{text:"ɪ"},{text:"\ue001",font:"sys:space"},{text:"ᴛᴇᴍ ꜱʟᴏᴛ : "}]
data modify storage pc:lang sys.lobby.end.equipment set value {color:"gray",text:" ᴇꞯᴜɪᴘᴍᴇɴᴛ : "}
data modify storage pc:lang sys.lobby.end.money set value [{color:"gray",text:" ᴍᴏɴᴇʏ"},{text:"\ue006",font:"sys:space"},{text:" : "}]
data modify storage pc:lang sys.lobby.end.total set value {color:"gray",text:"ᴛᴏᴛᴀʟ "}
data modify storage pc:lang sys.lobby.end.spent set value {color:"gray",text:"ꜱᴘᴇɴᴛ "}
data modify storage pc:lang sys.lobby.end.remain set value {color:"gray",text:"ʀᴇᴍᴀɪɴ "}
data modify storage pc:lang sys.lobby.end.dmg set value {color:"gray",text:" ᴅᴀᴍᴀɢᴇ : "}
data modify storage pc:lang sys.lobby.end.dealt set value {color:"gray",text:"ᴅᴇᴀʟᴛ "}
data modify storage pc:lang sys.lobby.end.taken set value {color:"gray",text:"ᴛᴀᴋᴇɴ "}
data modify storage pc:lang sys.lobby.end.ascension set value {color:"#aa80ad",text:" ᴀꜱᴄᴇɴꜱɪᴏɴ : "}

    # Combat end
data modify storage pc:lang sys.combat.chest_title set value {text:"Choose an Item"}
data modify storage pc:lang sys.combat.obtain set value {text:"Obtain ",type:"text"}
data modify storage pc:lang sys.combat.picked_up set value {text:" picked up ",color:"gray",type:"text"}
data modify storage pc:lang sys.combat.money set value {text:"Money",color:"#F1DE61",type:"text"}
data modify storage pc:lang sys.combat.continue set value {text:"* You Continue Your Adventure!",color:"gray",type:"text"}
data modify storage pc:lang sys.combat.finish_turn set value {text:"* You Finish Your Turn!",color:"gray",type:"text"}
data modify storage pc:lang sys.combat.finish_game set value {text:"* You Finish the Game!",color:"gray",type:"text"}

    # Rest area
data modify storage pc:lang sys.rest_area.rest set value "◆    Rest    ◆"
data modify storage pc:lang sys.rest_area.exit_game set value {color:"dark_gray",text:"Exit Game"}
data modify storage pc:lang sys.rest_area.campfire_base set value "Campfire Base"
data modify storage pc:lang sys.rest_area.back set value "Back"
data modify storage pc:lang sys.trader.armor_store set value [{text:"Armor Store"}]
data modify storage pc:lang sys.trader.travel_store set value [{text:"Traveler's Store"}]

    # Titles / misc UI
data modify storage pc:lang sys.ui.click_to_start set value "Click to Start"
data modify storage pc:lang sys.ui.login_title set value ["",{text:"◇ ",color:"#983CC6",type:"text"},{text:"VitreArena",color:"gold",type:"text"},{text:" ◇",color:"#983CC6",type:"text"}]
data modify storage pc:lang sys.ui.login_subtitle set value {text:"By 紙圓 (Paper_Cricel)",color:"white",type:"text"}
data modify storage pc:lang sys.ui.complete set value {text:"You complete the VitreArena!",color:"gold",type:"text"}
data modify storage pc:lang sys.ui.defeat set value {text:"Defeat",color:"#FA2E2E",bold:1b,type:"text"}
data modify storage pc:lang sys.ui.journey_ends set value [{text:"* Your Journey Ends Here.",color:"gray",type:"text"}]

    # HUD / Actionbar labels (font:sys:default = immune to Force Unicode Font)
data modify storage pc:lang sys.hud.hp set value {text:" HP ",font:"sys:default",bold:1b}
data modify storage pc:lang sys.hud.energy set value {color:"gold",text:" Energy ",font:"sys:default",bold:1b}
data modify storage pc:lang sys.hud.money set value {color:"#f4cd72",text:" Money ",font:"sys:default",bold:1b}
data modify storage pc:lang sys.hud.durability set value {color:"#3fa0e1",text:" Durability ",font:"sys:default",bold:1b}
data modify storage pc:lang sys.hud.enemy_turn set value {text:"ᴇɴᴇᴍʏ ᴛᴜʀɴ",color:"#CE76DA",font:"sys:default"}
data modify storage pc:lang sys.hud.your_turn set value {text:"ʏᴏᴜʀ ᴛᴜʀɴ",color:"#71EDA5",font:"sys:default"}
    # Turn banner offsets (subtitle)
data modify storage pc:lang sys.hud.offset.your_turn_front set value "\uf007"
data modify storage pc:lang sys.hud.offset.your_turn_back set value "\uf050\uf009"
data modify storage pc:lang sys.hud.offset.enemy_turn_front set value "\uf003"
data modify storage pc:lang sys.hud.offset.enemy_turn_back set value "\uf060\uf001"
    # Rest-area actionbar offsets (sys:space px; tune per language so the bar fits the labels)
data modify storage pc:lang sys.hud.offset.front set value "\uf050\uf003\uf00b"
data modify storage pc:lang sys.hud.offset.back set value "\uf100\uf090\uf002"
data modify storage pc:lang sys.hud.offset.mid set value "\uf200\uf050\uf006\ue00b"
    # Combat-turn actionbar offsets (Energy / Durability)
data modify storage pc:lang sys.hud.offset.turn_front set value "\uf010\uf008\uf00b"
data modify storage pc:lang sys.hud.offset.turn_back set value "\uf200\uf030\uf003"

    # Refuse (subtitle)
data modify storage pc:lang sys.refuse.no_char set value [{text:"Select a Character"}]
data modify storage pc:lang sys.refuse.started set value [{text:"Game Already Started"}]
data modify storage pc:lang sys.refuse.invalid_slot set value [{text:"Invalid Slot"}]
data modify storage pc:lang sys.refuse.no_energy set value [{text:"Not enough Energy"}]
data modify storage pc:lang sys.refuse.no_db set value [{text:"No Durability"}]
data modify storage pc:lang sys.refuse.anvil_busy set value [{text:"Anvil cannot repair"}]
data modify storage pc:lang sys.refuse.hotbar set value "Hotbar "
data modify storage pc:lang sys.refuse.invalid_item set value "Invalid Item"
data modify storage pc:lang sys.refuse.infinite_db set value "Infinite Durability"
data modify storage pc:lang sys.refuse.durability set value "Durability"
data modify storage pc:lang sys.refuse.is_full set value " is full"

    # Tutorial
data modify storage pc:lang sys.tutorial.drop set value ["",{color:"gray",text:"* ",type:"text"},{color:"blue",text:"Drop an item",type:"text"},{color:"gray",text:" to ",type:"text"},{color:"yellow",text:"view its effects",type:"text"},{color:"gray",text:" (like ",type:"text"},{color:"#7ABFF1",text:"Strength",type:"text"},{color:"gray",text:"). This ",type:"text"},{color:"yellow",text:"also works",type:"text"},{color:"gray",text:" for items ",type:"text"},{color:"blue",text:"dropped from a chest",type:"text"},{color:"gray",text:".",type:"text"}]
data modify storage pc:lang sys.tutorial.hotbar set value ["",{color:"gray",text:"",extra:[{underlined:true,text:"[Tips]"}," Your hotbar has "]},{color:"yellow",text:"3 colored slots "},{color:"gray",text:":\n"},{color:"#72BD7A",text:" ● "},{color:"#E3A867",text:"Orange slot"},{color:"gray",text:" is for "},{color:"#D983F4",text:"Move Item\n"},{color:"#72BD7A",text:" ● "},{color:"#6291BA",text:"Blue slot"},{color:"gray",text:" is for "},{color:"#D983F4",text:"Repair Item\n"},{color:"#72BD7A",text:" ● "},{color:"#6FD4A5",text:"Green slots"},{color:"gray",text:" are for "},{color:"#D983F4",text:"Skill Item\n"},{color:"gray",text:"Also, make sure to check each "},{color:"yellow",text:"item's description"},{color:"gray",text:"!"}]
data modify storage pc:lang sys.tutorial.campfire set value ["",{color:"gray",underlined:true,text:"[Tips]"},{color:"blue",text:" Right-click"},{color:"gray",text:" the "},{color:"white",text:"Rest"},{color:"gray",text:" to check."}]
data modify storage pc:lang sys.tutorial.trader set value ["",{color:"gray",underlined:true,text:"[Tips]"},{color:"blue",text:" Right-click"},{color:"gray",text:" the "},{color:"white",text:"trader's head"},{color:"gray",text:" to check."}]

        # Tutorial pages
data modify storage pc:lang sys.tutorial.page.1 set value ["",{color:"blue",text:"Right-click"}," on the selectable block to ",{color:"yellow",text:"use item"},"."]
data modify storage pc:lang sys.tutorial.page.2 set value ["",{color:"blue",text:"Sneak"}," and ",{color:"blue",text:"Look"}," at the enemy to ",{color:"yellow",text:"check their intent"},"."]
data modify storage pc:lang sys.tutorial.page.3 set value ["",{color:"blue",text:"Hold"}," a damaged item and ",{color:"blue",text:"right-click"}," the ",{color:"#7ABBF1",text:"Anvil"}," to activate ",{color:"#D983F4",text:"Repair Mode"},"."]
data modify storage pc:lang sys.tutorial.page.4 set value ["Beware: Enemies ",{color:"yellow",text:"change their intent positions"}," whenever you ",{color:"blue",text:"use an item"},"."]

# Armors
data modify storage pc:lang item.chest.entrench set value {"text":"Entrench"}
data modify storage pc:lang lore.chest.entrench set value [[{color:"gray",text:"ꜱᴛᴀʀᴛ ᴏꜰ ʏᴏᴜʀ ᴛᴜʀɴ :"}],[{color:"#7ABFF1",text:"Shield"}," only wears off 5 points."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ 3 ᴛɪᴍᴇꜱ ʏᴏᴜ ɢᴀɪɴ "},{color:"#7ABFF1",text:"ꜱʜɪᴇʟᴅ"},{color:"gray",text:" :"}],["Deal 6 damage to all enemies."],[{color:"#72BD7A",text:"● "},{color:"gray",text:"ᴛɪᴍᴇꜱ : ",extra:[{nbt:"item.combat.times",storage:"pc:temp"}]}]]

data modify storage pc:lang item.chest.glass_cannon set value {"text":"Glass Cannon"}
data modify storage pc:lang lore.chest.glass_cannon set value [[{"color":"gray","text":"ᴏɴ ʜɪᴛ :"}],["Deals 50% more damage."],[{"italic":false,"color":"white","text":""}],[{"color":"gray","text":"ᴏɴ ʜᴜʀᴛ :"}],["Takes 50% more damage."]]

data modify storage pc:lang item.chest.repair_core set value {"text":"Repairsman's Core"}
data modify storage pc:lang lore.chest.repair_core set value [[{color:"gray",text:"ꜰᴏʀ ᴇᴀᴄʜ ᴀɴᴠɪʟ ɪɴ "},{color:"#d983f4",text:"ʀᴇᴘᴀɪʀ ᴍᴏᴅᴇ"},{color:"gray",text:" :"}],["Gain 2 ",{color:"#7ABFF1",text:"Strength"}," this turn."],[],[{color:"gray",text:"ꜱᴛᴀʀᴛ ᴇᴀᴄʜ ᴄᴏᴍʙᴀᴛ :"}],["Increase 1 ",{color:"#F1DE61",text:"Max Durability"},{"font":"sys:icon","text":"1"}," of all ",{color:"#D983F4",text:"Skill Item"},"."]]

data modify storage pc:lang item.feet.energy_surge set value {"text":"Energy Surge"}
data modify storage pc:lang lore.feet.energy_surge set value [[{color:"gray",text:"ᴡʜᴇɴᴇᴠᴇʀ ᴀɴʏ ɪᴛᴇᴍ'ꜱ "},{color:"#F1DE61",text:"ᴅᴜʀᴀʙɪʟɪᴛʏ"},{font:"sys:icon",text:"1"},{color:"gray",text:" ɪꜱ ᴄᴏɴꜱᴜᴍᴇᴅ :"}],["Deal (",{color:"#F1DE61",text:"Energy"},{font:"sys:icon",text:"0"},") damage to all"],["enemies within ",{color:"#7ABBF1",text:"3x3 block"},"."],[],[{color:"gray",text:"ᴏɴ ᴜꜱᴇ ᴀɴ ɪᴛᴇᴍ ᴡɪᴛʜ "},{color:"#F1DE61",text:"ᴇɴᴇʀɢʏ"},{font:"sys:icon",text:"0"},{color:"gray",text:" ᴄᴏꜱᴛ 2 ᴏʀ ᴍᴏʀᴇ :"}],["this item's ",{color:"#F1DE61",text:"Durability"},{font:"sys:icon",text:"1"}," will not be lost."],["Can only trigger once per turn."],[{color:"#72BD7A",text:"● "},{color:"gray",text:"ᴛʜɪꜱ ᴛᴜʀɴ : "},{nbt:"item.combat.this_turn",storage:"pc:temp",interpret:1b}]]

data modify storage pc:lang item.feet.footwork set value {"text":"Footwork"}
data modify storage pc:lang lore.feet.footwork set value [[{color:"gray",text:"ᴛʜᴇ 4ᴛʜ ɪᴛᴇᴍ ᴜꜱᴇᴅ ᴇᴀᴄʜ ᴛᴜʀɴ :"}],[{color:"#f1de61",text:"Durability"},{"font":"sys:icon","text":"1"}," will not be lost."],[{color:"#72BD7A",text:"●"},{color:"gray",text:" ᴛɪᴍᴇꜱ : ",extra:[{nbt:"item.combat.times",storage:"pc:temp"}]}],[],[{color:"gray",text:"ꜱᴛᴀʀᴛ ᴇᴀᴄʜ ᴄᴏᴍʙᴀᴛ :"}],["Increase 2 ",{color:"#f1de61",text:"Max Durability"},{"font":"sys:icon","text":"1"}," of ",{color:"#D983F4",text:"Move Item"},"."]]

data modify storage pc:lang item.feet.vigilance set value {"text":"Vigilance"}
data modify storage pc:lang lore.feet.vigilance set value [[{color:"gray",text:"ꜱᴛᴀʀᴛ ᴏꜰ ᴇᴀᴄʜ ᴛᴜʀɴ :"}],["Increase 1 ",{color:"#F1DE61",text:"Max Durability"},{font:"sys:icon",text:"1"}," of ",{color:"#D983F4",text:"Move Item"}],["this turn for each enemy within a ",{color:"#7ABBF1",text:"9-block"}],[{color:"#7ABBF1",text:"cross"},"."],[],[{color:"gray",text:"ᴇɴᴅ ᴏꜰ ᴇᴀᴄʜ ᴛᴜʀɴ :"}],["Convert each ",{color:"#f1de61",text:"Durability"},{font:"sys:icon",text:"1"}," of ",{color:"#D983F4",text:"Move Item"}],["into 3 ",{color:"#7ABBF1",text:"Vigor"},"."]]

data modify storage pc:lang item.head.frenzied set value {"text":"Frenzied"}
data modify storage pc:lang lore.head.frenzied set value [[{color:"gray",text:"ᴇᴠᴇʀʏ 4ᴛʜ ᴀᴛᴛᴀᴄᴋ :"}],["Double the attack damage."],["Gain 1 ",{color:"#F1DE61",text:"Energy"},{font:"sys:icon",text:"0"},"."],[{color:"#72BD7A",text:"● "},{color:"gray",text:"ᴄᴏᴜɴᴛ : "},{nbt:"item.combat.count",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.head.gold_greed set value {"text":"Gold Greed"}
data modify storage pc:lang lore.head.gold_greed set value [[{color:"gray",text:"ᴇɴᴅ ᴏꜰ ᴄᴏᴍʙᴀᴛ:"}],["Gain 50% additional ",{color:"#F1DE61",text:"Money"},{"font":"sys:icon","text":"3"},"."],[],[{color:"gray",text:"ᴏɴ ᴋɪʟʟ :"}],["Gain 3 ",{color:"#F1DE61",text:"Money"},{"font":"sys:icon","text":"3"}," if the enemy"],["is not ",{color:"#7ABFF1",text:"Minion"},"."]]

data modify storage pc:lang item.head.min_passion set value {"text":"3 Minute Passion"}
data modify storage pc:lang lore.head.min_passion set value [[{color:"gray",text:"ꜱᴛᴀʀᴛ ᴇᴀᴄʜ ᴄᴏᴍʙᴀᴛ :"}],["Gain 3 ",{color:"#7ABFF1",text:"Strength"},". Gain 3 ",{color:"#F1DE61",text:"Energy"},{"font":"sys:icon","text": "0"},"."],[],[{color:"gray",text:"ɪꜰ ɴᴏ ᴀɴʏᴏɴᴇ ᴅɪᴇꜱ ɪɴ 3 ᴛᴜʀɴ :"}],["Lose 1 ",{color:"#7ABFF1",text:"Strength"},". Lose 1 ",{color:"#F1DE61",text:"Energy"},{"font":"sys:icon","text": "0"},"."],[{color:"#72BD7A",text:"●"},{color:"gray",text:" ᴛᴜʀɴ : ",extra:[{nbt:"item.combat.turn",storage:"pc:temp"}]}]]

data modify storage pc:lang item.legs.iron_resolve set value {"text":"Iron Resolve"}
data modify storage pc:lang lore.legs.iron_resolve set value [[{color:"gray",text:"ɪꜰ "},{color:"#F1DE61",text:"ʜᴘ"},{"font":"sys:icon","text":"2"},{color:"gray",text:" ɪꜱ ʙᴇʟᴏᴡ 50% :"}],["Deal 50% more damage. Restore 1 ",{color:"#F1DE61",text:"HP"},{"font":"sys:icon","text":"2"}],["at the start of your turn."],[],[{color:"gray",text:"ᴀᴛ ʏᴏᴜʀ 1ꜱᴛ ᴅᴇᴀᴛʜ :"}],["Set ",{color:"#F1DE61",text:"HP"},{"font":"sys:icon","text":"2"}," to 1. This item is destroyed"],["at the end of combat."]]

data modify storage pc:lang item.legs.jerk_reflex set value {"text":"Knee Jerk Reflex"}
data modify storage pc:lang lore.legs.jerk_reflex set value [[{color:"gray",text:"ꜱᴛᴀʀᴛ ᴏꜰ ʏᴏᴜʀ ᴛᴜʀɴ :"}],["Gain 2 ",{color:"#7ABFF1",text:"Shield"}," for each attack"],["received at previous turn."],[],[{color:"gray",text:"ᴏɴ ʟᴏꜱᴇ "},{color:"#f1de61",text:"ʜᴘ"},{"font":"sys:icon","text":"2"},{color:"gray",text:" :"}],["Lose 1 less."]]

data modify storage pc:lang item.legs.residual_defense set value {"text":"Residual Defense"}
data modify storage pc:lang lore.legs.residual_defense set value [[{color:"gray",text:"ᴇɴᴅ ᴏꜰ ʏᴏᴜʀ ᴛᴜʀɴ :"}],["Convert each remaining ",{color:"#f1de61",text:"Energy"},{"font":"sys:icon","text": "0"}," into 3 ",{color:"#7ABFF1",text:"Shield"},"."],["If ",{color:"#f1de61",text:"Energy"},{"font":"sys:icon","text": "0"}," is 4 or more, ",{color:"#7abbf1",text:"Shield"}," won't removed"],["at the start of your next turn."]]

# Items

    # Move
data modify storage pc:lang item.move.basic set value {"text":"Move"}
data modify storage pc:lang lore.move.basic set value [["Move 1 block."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ :"}],["Restore all ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."]]

data modify storage pc:lang item.move.bishop set value {"text":"Bishop"}
data modify storage pc:lang lore.move.bishop set value [["Move 1 block."],["Can select within ",{color:"#7ABBF1",text:"3x3 block"},"."],[],[{color:"gray",text:"ᴀʟʟ "},{color:"#D983F4",text:"ꜱᴋɪʟʟ ɪᴛᴇᴍ"},{color:"gray",text:" :"}],["Can additionally select within"],["a diagonal ",{color:"#7ABBF1",text:"1-block cross"},"."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ :"}],["Restore all ",{color:"#F1DE61",text:"Durability"},{font:"sys:icon",text:"1"},"."]]

data modify storage pc:lang item.move.ender_pearl set value {"text":"Ender Pearl"}
data modify storage pc:lang lore.move.ender_pearl set value [["Move 1 block. Can select within ",{color:"#7ABBF1",text:"7x7 block"},"."],["If no ",{color:"#7abbf1",text:"Phantom"}," exist, lose 1 ",{color:"#f1de61",text:"HP"},{font:"sys:icon",text:"2"}," and summon"],[{color:"#7abbf1",text:"Phantom"}," (1 ",{color:"#f1de61",text:"HP"},{font:"sys:icon",text:"2"},") at previous position."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ :"}],["Restore all ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."]]

data modify storage pc:lang item.move.jump set value {"text":"Jump"}
data modify storage pc:lang lore.move.jump set value [["Move up to 2 blocks, ignoring occupied blocks."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ 1ꜱᴛ ᴛɪᴍᴇ "},{color:"#d983f4",text:"ᴍᴏᴠᴇ ɪᴛᴇᴍ"},{color:"gray",text:" ᴜꜱᴇᴅ :"}],["Gain 1 ",{color:"#7ABFF1",text:"Critical Hit"},"."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ :"}],["Restore all ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."]]

data modify storage pc:lang item.move.minecart set value {"text":"Minecart"}
data modify storage pc:lang lore.move.minecart set value [["Move 1 block or ",{color:"#7abbf1",text:"Rail Area"}," block."],["Release ",{color:"#7abbf1",text:"Rail Area"}," at current block."],[],[{color:"gray",text:"ɪꜰ ꜱᴇʟᴇᴄᴛɪɴɢ ʙʟᴏᴄᴋ ʜᴀꜱ ᴀɴʏᴏɴᴇ :"}],["Deal 4 damage. Apply 1 ",{color:"#7abbf1",text:"Weakness"},". ",{color:"#7abbf1",text:"Repel"},"."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ :"}],["Restore all ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."]]

    # Repair
data modify storage pc:lang item.repair.basic set value {"text":"Anvil"}
data modify storage pc:lang lore.repair.basic set value [["Summon ",{color:"#7abbf1",text:"Anvil"}," (6 ",{color:"#F1DE61",text:"HP"},{color:"white",font:"sys:icon",text:"2"},")."],["It takes 2 rounds to repair 3 ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ :"}],["Restore 1 ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."]]

data modify storage pc:lang item.repair.magma set value {"text":"Magma Anvil"}
data modify storage pc:lang lore.repair.magma set value [["Summon ",{color:"#7abbf1",text:"Anvil"}," (12 ",{color:"#F1DE61",text:"HP"},{color:"white",font:"sys:icon",text:"2"},")."],["It takes 2 rounds to repair 3 ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."],["It is immune to ",{color:"#7abbf1",text:"Fire Area"}," damage."],[],[{color:"gray",text:"ᴏɴ ᴀɴᴠɪʟ ᴅᴇᴀᴛʜ :"}],["It releases 4 ",{color:"#7abbf1",text:"Fire Area"}," in ",{color:"#7ABBF1",text:"1-block cross"},"."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ :"}],["Restore 1 ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."]]

data modify storage pc:lang item.repair.rugged set value {"text":"Rugged Anvil"}
data modify storage pc:lang lore.repair.rugged set value [["Summon ",{color:"#7abbf1",text:"Anvil"}," (18 ",{color:"#F1DE61",text:"HP"},{color:"white",font:"sys:icon",text:"2"},")."],["It takes 3 rounds to repair all ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."],["Every turn, it applies 3 ",{color:"#7ABBF1",text:"Shield"}," to all allies"],["within ",{color:"#7ABBF1",text:"3x3 block"},"."],[],[{color:"gray",text:"ᴡʜᴇɴ ᴀɴᴠɪʟ ꜰᴜʟʟʏ ʀᴇᴘᴀɪʀᴇᴅ :"}],["Gain 2 ",{color:"#F1DE61",text:"Energy"},{font:"sys:icon",text:"0"},"."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ :"}],["Restore 1 ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."]]

data modify storage pc:lang item.repair.curious set value {"text":"Curious Anvil"}
data modify storage pc:lang lore.repair.curious set value [["Summon ",{color:"#7abbf1",text:"Anvil"}," (",{nbt:"item.combat.hpmax",storage:"pc:temp"}," ",{color:"#F1DE61",text:"HP"},{color:"white",font:"sys:icon",text:"2"},")."],["It takes 2 rounds to repair 3 ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."],[{italic:false,color:"white",text:""}],[{color:"gray",text:"ᴡʜᴇɴ ᴀɴᴠɪʟ ꜰᴜʟʟʏ ʀᴇᴘᴀɪʀᴇᴅ :"}],["If has enemy within ",{color:"#7ABBF1",text:"1-block cross"},","],["the repairer gain 2 ",{color:"#7ABBF1",text:"Strength"},"."],[{italic:false,color:"white",text:""}],[{color:"gray",text:"ᴡʜᴇɴ ᴀɴᴠɪʟ ᴋɪʟʟᴇᴅ ʙʏ ᴀɴʏᴏɴᴇ :"}],["Summoned ",{color:"#7abbf1",text:"Anvil"}," increase 2 ",{color:"#F1DE61",text:"Max HP"},{font:"sys:icon",text:"2"},","],["the repairer gain 1 ",{color:"#F1DE61",text:"Energy"},{color:"white",font:"sys:icon",text:"0"}," next turn."],[{italic:false,color:"white",text:""}],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ :"}],["Restore 1 ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."]]

data modify storage pc:lang item.repair.wireless set value {"text":"Wireless Anvil"}
data modify storage pc:lang lore.repair.wireless set value [["Summon ",{color:"#7abbf1",text:"Anvil"}," (6 ",{color:"#F1DE61",text:"HP"},{color:"white",font:"sys:icon",text:"2"},")."],["It repairs 2 ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"}," each turn, last for 3 turns."],["Can active ",{color:"#D983F4",text:"Repair Mode"}," from anywhere."],[],[{color:"gray",text:"ᴏɴ "},{color:"#d983f4",text:"ʀᴇᴘᴀɪʀ ᴍᴏᴅᴇ"},{color:"gray",text:" :"}],["Item won't be ",{color:"#FF6065",text:"disabled"},"."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ ɴᴏ ᴀɴʏ ᴀɴᴠɪʟ ᴇxɪꜱᴛ :"}],["Restore 1 ",{color:"#F1DE61",text:"Durability"},{color:"white",font:"sys:icon",text:"1"},"."]]

    # Skill
data modify storage pc:lang item.skill.warrior/blazing_meteorite set value {"text":"Blazing Meteorite"}
data modify storage pc:lang lore.skill.warrior/blazing_meteorite set value [["Deal 18 Damage to all enemies and"],["release 6 ",{color:"#7ABFF1",text:"Fire Area"}," within ",{color:"#7ABBF1",text:"3x3 block"},"."],[{color:"#ff6065",text:"Disable"}," this item for 2 turns."],["Can select any block."]]

data modify storage pc:lang item.skill.warrior/borrowed_time set value {"text":"Borrowed Time"}
data modify storage pc:lang lore.skill.warrior/borrowed_time set value [["Gain (",{color:"#F1DE61",text:"Max Energy"},{color:"white","font":"sys:icon","text": "0"},") ",{color:"#F1DE61",text:"Energy"},{color:"white","font":"sys:icon","text": "0"},","],["but lose equivalent amount next turn."],[""],[{color:"gray",text:"ᴇᴠᴇʀʏ ᴛᴜʀɴ :"}],["Restore 1 ",{color:"#F1DE61",text:"Durability"},{color:"white","font":"sys:icon","text":"1"},"."]]

data modify storage pc:lang item.skill.warrior/brittle_assault set value {"text":"Brittle Assault"}
data modify storage pc:lang lore.skill.warrior/brittle_assault set value [["Deal 2 damage. Deal 2 more damage for"],["each ",{color:"#F1DE61",text:"Durability"},{font:"sys:icon",text:"1"}," spent this turn."],[{color:"#72BD7A",text:"●"},{color:"gray",text:" ꜱᴘᴇɴᴛ : "},{nbt:"item.combat.count",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/cactus set value {"text":"Cactus"}
data modify storage pc:lang lore.skill.warrior/cactus set value [["Deal 3 damage 2 times."],[],[{color:"gray",text:"ᴏɴ ʜᴜʀᴛ :"}],["Deal 4 damage to the attacker."]]

data modify storage pc:lang item.skill.warrior/fading_compass set value {"text":"Fading Compass"}
data modify storage pc:lang lore.skill.warrior/fading_compass set value [["Deal 4 damage to all enemies within ",{color:"#7ABBF1",text:"3x3 block"},"."],["Repeat this effect for each ",{color:"#F1DE61",text:"Durability"},{font:"sys:icon",text:"1"},"."],[],[{color:"gray",text:"ᴇɴᴅ ᴏꜰ ʏᴏᴜʀ ᴛᴜʀɴ :"}],["Gain (",{color:"#F1DE61",text:"Durability"},{font:"sys:icon",text:"1"},") ",{color:"#7ABFF1",text:"Shield"},". Consume 1 ",{color:"#F1DE61",text:"Durability"},{font:"sys:icon",text:"1"},"."]]

data modify storage pc:lang item.skill.warrior/flint_and_steel set value {"text":"Flint and Steel"}
data modify storage pc:lang lore.skill.warrior/flint_and_steel set value [["Release 3 ",{color:"#7ABFF1",text:"Fire Area"},"."],["Can select within ",{color:"#7ABBF1",text:"5x5 block"},"."]]

data modify storage pc:lang item.skill.warrior/heal_liquor set value {"text":"Heal Liquor"}
data modify storage pc:lang lore.skill.warrior/heal_liquor set value [["Heal for 50% of ",{color:"#F1DE61",text:"Max HP"},{color:"white","font":"sys:icon","text":"2"}],["and apply 1 ",{color:"#7ABFF1",text:"Misery"},"."],[""],[{color:"gray",text:"ᴏɴ ʟᴏꜱᴇ "},{color:"#F1DE61",text:"ʜᴘ"},{color:"white","font":"sys:icon","text":"2"},{color:"gray",text:" :"}],["For each 1 ",{color:"#F1DE61",text:"HP"},{color:"white","font":"sys:icon","text":"2"}," lost, gain 3 ",{color:"#7ABFF1",text:"Vigor"},"."]]

data modify storage pc:lang item.skill.warrior/hemorrhage set value {"text":"Hemorrhage"}
data modify storage pc:lang lore.skill.warrior/hemorrhage set value [["Deal 4 damage and apply 3 ",{"text":"Vulnerable","color":"#7ABFF1"},"."],["Can select within ",{color:"#7ABBF1",text:"2-block cross"},"."]]

data modify storage pc:lang item.skill.warrior/momentum set value {"text":"Momentum"}
data modify storage pc:lang lore.skill.warrior/momentum set value [["Deal 4 damage. Repeat this effect"],["for each ",{color:"#F1DE61",text:"Energy"},{font:"sys:icon",text:"0"}," spent this turn."],[{color:"#72BD7A",text:"●"},{color:"gray",text:" ʀᴇᴘᴇᴀᴛ : "},{nbt:"item.combat.repeat",storage:"pc:temp",color:"gray"}],[],[{color:"gray",text:"ᴏɴ ꜱᴘᴇɴᴅ 5 "},{color:"#F1DE61",text:"ᴇɴᴇʀɢʏ"},{font:"sys:icon",text:"0"},{color:"gray",text:" :"}],["Gain 1 ",{color:"#F1DE61",text:"Energy"},{font:"sys:icon",text:"0"},"."],[{color:"#72BD7A",text:"●"},{color:"gray",text:" ᴄᴏᴜɴᴛ : "},{nbt:"item.combat.count",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/op_potion set value [{color:"#FF8787",text:"P",bold:1b},{color:"#FFAA86",text:"o"},{color:"#FFCE84",text:"t"},{color:"#FFF183",text:"i"},{color:"#EBFF84",text:"o"},{color:"#CAFF88",text:"n "},{color:"#A9FF8C",text:"o"},{color:"#8FFF96",text:"f "},{color:"#8FFEB7",text:"O"},{color:"#8FFCD7",text:"V"},{color:"#8FFBF8",text:"E"},{color:"#90E3FF",text:"R"},{color:"#92C4FF",text:"P"},{color:"#93A6FF",text:"O"},{color:"#A093FF",text:"W"},{color:"#BE91FF",text:"E"},{color:"#FB8CFF",text:"R"}]
data modify storage pc:lang lore.skill.warrior/op_potion set value [["Apply 20 ",{"text":"Strength","color":"#7ABFF1"},"."]]

data modify storage pc:lang item.skill.warrior/parrying set value {"text":"Parrying"}
data modify storage pc:lang lore.skill.warrior/parrying set value [["Gain 7 ",{color:"#7ABFF1",text:"Shield"},". ",{color:"#ff6065",text:"Disable "},{color:"#D983F4",text:"Move Item"}," this turn."],[],[{color:"gray",text:"ᴏɴ ʜᴜʀᴛ :"}],[{color:"#7ABFF1",text:"Repel"}," the attacker. If blocked, restore"],["1 ",{color:"#F1DE61",text:"Durability"},{"font":"sys:icon","text":"1"}," and gain 1 ",{color:"#F1DE61",text:"Energy"},{"font":"sys:icon","text":"0"}," next turn."]]

data modify storage pc:lang item.skill.warrior/silent_axe set value {"text":"Silent Axe"}
data modify storage pc:lang lore.skill.warrior/silent_axe set value [["Deal 8 damage. Increase 3 additonal"],["damage for each ",{color:"#7ABFF1",text:"Vulnerable"}," on the"],["targeted enemy."],[],[{color:"gray",text:"ᴇɴᴅ ᴏꜰ ʏᴏᴜʀ ᴛᴜʀɴ :"}],["Automatically aimed in a line straightly"],["or diagonally. Apply 2 ",{color:"#7ABFF1",text:"Vulnerable"}," to"],["all enemies 3 blocks forward."]]

data modify storage pc:lang item.skill.warrior/biased_force set value {"text":"Biased Force"}
data modify storage pc:lang lore.skill.warrior/biased_force set value [["Gain 3 ",{color:"#7abbf1",text:"Strength"},"."],[],[{color:"gray",text:"ꜱᴛᴀʀᴛ ᴏꜰ ʏᴏᴜʀ ᴛᴜʀɴ :"}],["If ",{color:"#7abbf1",text:"Strength"}," is 1 or more,"],["lose 1 ",{color:"#7abbf1",text:"Strength"},"."]]

data modify storage pc:lang item.skill.warrior/engulfed_pain set value {"text":"Engulfed Pain"}
data modify storage pc:lang lore.skill.warrior/engulfed_pain set value [["Apply 3 ",{color:"#7ABBF1",text:"Vulnerable"}," to all enemies within ",{color:"#7ABBF1",text:"3x3 block"},"."],["Can select any block."],[],[{color:"gray",text:"ᴇɴᴅ ᴏꜰ ʏᴏᴜʀ ᴛᴜʀɴ ɪꜰ "},{color:"#F1DE61",text:"ᴅᴜʀᴀʙɪʟɪᴛʏ"},{font:"sys:icon",text:"1"},{color:"gray",text:" ɪꜱ ᴀʙᴏᴠᴇ 0 :"}],["Deal 1 damage to all enemies for"],["each ",{color:"#7abbf1",text:"Vulnerable"}," on them."]]

data modify storage pc:lang item.skill.warrior/training_sword set value {"text":"Training Sword"}
data modify storage pc:lang lore.skill.warrior/training_sword set value [["Deal 4 damage."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ 3ʀᴅ ᴀᴛᴛᴀᴄᴋ :"}],["Apply 4 ",{color:"#7ABBF1",text:"Vulnerable"},"."],[{color:"#72BD7A",text:"● "},{color:"gray",text:"ᴛɪᴍᴇꜱ : "},{nbt:"item.combat.times",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/deterrence set value {"text":"Deterrence"}
data modify storage pc:lang lore.skill.warrior/deterrence set value [["Deal 4 damage to all enemies within ",{color:"#7ABBF1",text:"3x3 block"},"."],["Gain 2 ",{color:"#7ABBF1",text:"Strength"}," this turn for each enemy hit."]]

data modify storage pc:lang item.skill.warrior/taunt set value {"text":"Taunt"}
data modify storage pc:lang lore.skill.warrior/taunt set value [["Apply 2 ",{color:"#7ABBF1",text:"Vulnerable"}," to all enemies"],["3 blocks in front."],[],[{color:"gray",text:"ᴇᴠᴇʀʏ 3 ᴛɪᴍᴇꜱ ᴛʜɪꜱ ɪᴛᴇᴍ ᴜꜱᴇᴅ :"}],["Gain 12 ",{color:"#7ABBF1",text:"Shield"},"."],["Double the enemy's ",{color:"#7ABBF1",text:"Vulnerable"},"."],[{color:"#72BD7A",text:"●"},{color:"gray",text:" ᴛɪᴍᴇꜱ : "},{nbt:"item.combat.times",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/repair_jade set value {"text":"Repairsman's Jade"}
data modify storage pc:lang lore.skill.warrior/repair_jade set value [["Gain (",{color:"#F1DE61",text:"Durability"},{font:"sys:icon",text:"1"},") ",{color:"#7ABBF1",text:"Strength"}," this turn."],["Set ",{color:"#F1DE61",text:"Energy"},{font:"sys:icon",text:"0"}," cost this turn to 1."]]

data modify storage pc:lang item.skill.warrior/dejavu set value {"text":"Déjà Vu"}
data modify storage pc:lang lore.skill.warrior/dejavu set value [["Deal 14 damage. Use the ",{color:"#D983F4",text:"Skill Item"}],["you last used for free."],[{color:"#72BD7A",text:"●"},{color:"gray",text:" ʟᴀꜱᴛ ᴜꜱᴇᴅ : "},{nbt:"item.combat.last",storage:"pc:temp",color:"gray",interpret:1b}],[],[{color:"gray",text:"ꜱᴛᴀʀᴛ ᴏꜰ ᴇᴀᴄʜ ᴛᴜʀɴ :"}],[{color:"#FF6065",text:"Disable"}," this item if you haven't"],["used any ",{color:"#D983F4",text:"Skill Item"}," yet."]]

data modify storage pc:lang item.skill.warrior/inferno set value {"text":"Inferno"}
data modify storage pc:lang lore.skill.warrior/inferno set value [["Gain 3 ",{color:"#7ABBF1",text:"Shield"}," and release 2 ",{color:"#7ABBF1",text:"Fire Area"}],["within ",{color:"#7ABBF1",text:"3x3 block"},"."],["Can select within ",{color:"#7ABBF1",text:"3x3 block"},"."]]

data modify storage pc:lang item.skill.warrior/yama_double set value {"text":"Yama's Double"}
data modify storage pc:lang lore.skill.warrior/yama_double set value [["Release 4 ",{color:"#7ABBF1",text:"Fire Area"}," and evoke all"],[{color:"#7ABBF1",text:"Fire Area"}," that enemies are standing on."],[],[{color:"gray",text:"ꜱᴛᴀʀᴛ ᴏꜰ ᴇᴀᴄʜ ᴛᴜʀɴ :"}],["If any enemy's ",{color:"#F1DE61",text:"HP"},{font:"sys:icon",text:"2"}," is below 25%, they die."]]

# Game Level
data modify storage pc:lang game.level.minecraft.cave set value {text:"Cave",color:"white"}
data modify storage pc:lang game.level.minecraft.crimson_forest set value {text:"Crimson Forest",color:"white"}
data modify storage pc:lang game.level.minecraft.deepslate_cave set value {text:"Deepslate Cave",color:"red"}
data modify storage pc:lang game.level.minecraft.ender_dragon set value {text:"Ender Dragon",color:"light_purple"}
data modify storage pc:lang game.level.minecraft.forest set value {text:"Forest",color:"white"}
data modify storage pc:lang game.level.minecraft.mineshaft set value {text:"Mineshaft",color:"white"}
data modify storage pc:lang game.level.minecraft.nether set value {text:"Nether",color:"white"}
data modify storage pc:lang game.level.minecraft.nether_fortress set value {text:"Nether Fortress",color:"white"}
data modify storage pc:lang game.level.minecraft.stronghold set value {text:"Stronghold",color:"white"}
data modify storage pc:lang game.level.minecraft.tutorial set value {text:"Tutorial",color:"white"}
data modify storage pc:lang game.level.minecraft.zombie_village set value {text:"Zombie Village",color:"red"}

# current language (kept in sync so the settings menu shows the right toggle)
data modify storage pc:settings lang set value "en_us"
