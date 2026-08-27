function pc:sys/lang/reset

# System
data modify storage pc:lang sys.lore.ability set value {text: "能力", color: "#F5B055", "bold": true}
data modify storage pc:lang sys.lore.details set value {text: "詳細資訊", color: "#3FA0E1", "bold": true}
data modify storage pc:lang sys.lore.db.value set value "耐久度"
data modify storage pc:lang sys.lore.category set value "類別"
data modify storage pc:lang sys.lore.category_type.skill set value "技能"
data modify storage pc:lang sys.lore.category_type.move set value "移動"
data modify storage pc:lang sys.lore.category_type.repair set value "修復"
data modify storage pc:lang sys.lore.category_type.head set value "頭部"
data modify storage pc:lang sys.lore.category_type.chest set value "胸部"
data modify storage pc:lang sys.lore.category_type.legs set value "腿部"
data modify storage pc:lang sys.lore.category_type.feet set value "腳部"
data modify storage pc:lang sys.lore.category_type.option set value "選項"
data modify storage pc:lang sys.lore.price set value "價格"
data modify storage pc:lang sys.lore.triggered set value {"text":"已觸發","color":"#72BD7A"}
data modify storage pc:lang sys.lore.untriggered set value {"text":"未觸發","color":"gray"}
data modify storage pc:lang sys.lore.rarity set value "稀有度"
data modify storage pc:lang sys.lore.rarity_type.basic set value {"text":"基礎","color":"gray"}
data modify storage pc:lang sys.lore.rarity_type.common set value {"text":"普通","color":"#E7D9AD"}
data modify storage pc:lang sys.lore.rarity_type.rare set value {"text":"稀有","color":"#7ABBF1"}
data modify storage pc:lang sys.lore.rarity_type.epic set value {"text":"史詩","color":"#D983F4"}
data modify storage pc:lang sys.item.feature.title set value {text: "物品效果", color:"#A7DFA4", "bold": true}
data modify storage pc:lang sys.item.disable set value ["",{"color":"#ff6065","text":"禁用物品 "},{"color":"dark_gray","text":"["},{"color":"gray","nbt":"item.disable_turn","storage":"pc:temp","extra":[" 回合"]},{"color":"dark_gray","text":"]"}]

    # Options
data modify storage pc:lang sys.item.option.money set value {text:"金錢",color:"yellow"}
data modify storage pc:lang sys.lore.option.money set value {"text":"","italic":false,"color":"white","extra":["獲得 ",{"nbt":"loot.money","storage":"pc:temp"}," ",{"text":"金錢","color":"#F1DE61"},"。"] }
data modify storage pc:lang sys.item.option.campfire.hpmax set value {"text": "生命提升"}
data modify storage pc:lang sys.lore.option.campfire.hpmax set value {"text": "","italic": false,"color": "white","extra": ["增加 3 點",{"text": "最大血量","color": "#F1DE61"},{"font":"pc:sys/icon","text":"2","color": "white"},"。"]}
data modify storage pc:lang sys.item.option.campfire.epmax set value {"text": "能量提升"}
data modify storage pc:lang sys.lore.option.campfire.epmax set value {"text": "","italic": false,"color": "white","extra": ["增加 1 點",{"text": "最大能量","color": "#F1DE61"},{"font":"pc:sys/icon","text":"0","color": "white"},"。"]}
data modify storage pc:lang sys.item.option.campfire.skill_slot set value {"text": "欄位提升"}
data modify storage pc:lang sys.lore.option.campfire.skill_slot set value {"text": "","italic": false,"color": "white","extra": ["增加 1 個",{"text": "技能欄位","color": "#F1DE61"},"。"]}
data modify storage pc:lang sys.item.option.tip set value " 如何查看效果？"
data modify storage pc:lang sys.lore.option.tip set value [[{italic:false,color:"white",text:""},{color:"blue",text:"丟出物品"},{color:"gray",text:"來"},{color:"yellow",text:"查看其效果"},{color:"gray",text:"（例如"},{color:"#7ABFF1",text:"力量"},{color:"gray",text:"）。"}],[{italic:false,color:"white",text:""},{color:"gray",text:"從寶箱"},{color:"blue",text:"丟出的物品"},{color:"yellow",text:"也適用"},{color:"gray",text:"。"}]]
data modify storage pc:lang sys.item.option.end_turn set value {"color": "#4AB274","text": "結束回合 "}
data modify storage pc:lang sys.lore.option.end_turn set value "結束回合。"
data modify storage pc:lang sys.item.option.tutorial.next_page set value {"text":"","italic":false,"color":"yellow","extra":["第 ",{"score":{"name":"$combat.tutorial.page","objective":"pc.game"}}," 頁，共 4 頁"]}
data modify storage pc:lang sys.lore.option.tutorial.next_page set value {"text":"","italic":false,"color":"white","extra":["翻到下一頁。"]}
data modify storage pc:lang sys.item.option.tutorial.prev_page set value {"text":"","italic":false,"color":"yellow","extra":["第 ",{"score":{"name":"$combat.tutorial.page","objective":"pc.game"}}," 頁，共 4 頁"]}
data modify storage pc:lang sys.lore.option.tutorial.prev_page set value {"text":"","italic":false,"color":"white","extra":["翻到上一頁。"]}

# Floating combat text (pc:sys/fx/text/use)
data modify storage pc:lang sys.fx.booty set value {text:"贓物",color:"#7B7987"}
data modify storage pc:lang sys.fx.booty_wear set value {text:"贓物\n效果結束",color:"#7B7987"}
data modify storage pc:lang sys.fx.dragon_scale set value [{color:"#4EABC2",text:"龍"},{color:"#4944DB",text:"鱗"}]
data modify storage pc:lang sys.fx.reflex set value {color:"#9adfe4",text:"膝跳反射"}
data modify storage pc:lang sys.fx.undying_shell set value {text:"不死之軀",color:"#8c679c"}
data modify storage pc:lang sys.fx.rusty set value {text:"生鏽",color:"#5f361b"}
data modify storage pc:lang sys.fx.explosion set value {color:"#dd0a0a",text:"¡¡¡大爆炸!!!"}
data modify storage pc:lang sys.fx.vigilance set value {text:"警戒",color:"#5872F4"}
data modify storage pc:lang sys.fx.power_through set value {color:"#ff7272",text:"硬撐"}
data modify storage pc:lang sys.fx.strength_wear set value {text:"力量\n效果結束",color:"gray"}
data modify storage pc:lang sys.fx.revive set value {text:"復活",color:"#e7c65d"}
data modify storage pc:lang sys.fx.iron_resolve set value {color:"#ffc299",text:"鋼鐵意志"}
data modify storage pc:lang sys.fx.iron_resolve_wear set value {color:"gray",text:"鋼鐵意志\n效果結束"}
data modify storage pc:lang sys.fx.ook_ook set value {text:"咕咕嘎嘎",color:"#B62F32"}
data modify storage pc:lang sys.fx.boredom set value {text:"無聊",color:"#e0aa7a"}
data modify storage pc:lang sys.fx.gold_greed set value {text:"貪財",color:"#F1DE61"}
data modify storage pc:lang sys.fx.frenzied set value {text:"狂暴",color:"red"}
data modify storage pc:lang sys.fx.bias set value {color:"#844b25",text:"偏差"}
data modify storage pc:lang sys.fx.gentle_wear set value {color:"#91d4a4",text:"溫柔\n效果結束"}
data modify storage pc:lang sys.fx.jump set value {color:"#ffcb83",text:"跳躍"}
data modify storage pc:lang sys.fx.parrying set value {text:"招架",color:"#e665e6"}
data modify storage pc:lang sys.fx.enmity set value {text:"反目成仇",color:"#852FD1"}
data modify storage pc:lang sys.fx.vigor set value {color:"#ff9d3b",text:"活力"}
data modify storage pc:lang sys.fx.switch set value {color:"#cb70e4",text:"交換"}
data modify storage pc:lang sys.fx.whet set value {text:"打磨",color:"#D28D44"}
data modify storage pc:lang sys.fx.stubborn set value {color:"#974bd5",text:"頑固"}
data modify storage pc:lang sys.fx.learned set value {color:"#a1b8be",text:"增長見聞"}
data modify storage pc:lang sys.fx.energized set value {color:"#fb9b47",text:"充滿活力"}
data modify storage pc:lang sys.fx.blocked set value {text:"格擋",color:"#a4ada6"}
data modify storage pc:lang sys.fx.stunned set value {color:"#ecd578",text:"眩暈"}
data modify storage pc:lang sys.fx.interrupt set value {text:"打斷",color:"#9295f5"}
data modify storage pc:lang sys.fx.rally set value {text:"集結",color:"#F0A1D5"}
function pc:sys/lang/nouns/zh_tw

    # Lobby - author intro
data modify storage pc:lang sys.lobby.author.title set value [{text:" ◇ —— ",color:"gray",type:"text"},{text:"紙圓 (Paper_Cricel)",color:"#8ECFE3",bold:1b,type:"text"},{text:" —— ◇ ",color:"gray",type:"text"}]
data modify storage pc:lang sys.lobby.author.intro set value [" 嗨！我是 ",{color:"#BAE9E9",text:"紙圓 PaperCricel"}," .w.\n 這張地圖",{color:"yellow",text:"深受",extra:[{underlined:true,click_event:{action:"open_url",url:"https://youtu.be/dQw4w9WgXcQ"},hover_event:{action:"show_text",value:["",{text:"點擊查看"}]},text:"《",extra:[{text:"殺戮尖塔"},"》"]}]},"的啟發，一款我很喜歡的遊戲！但由於殺戮尖塔太難了，所以我就決定做一款屬於",{color:"yellow",text:"自己的回合制肉鴿"},"，",{color:"blue",text:"改了不少遊戲玩法"},"、",{color:"blue",text:"增加了一些容錯率"},"，希望你會喜歡最終成品！(。・ω・。)\n\n 我有空的時候會繼續",{color:"blue",text:"加入更多內容"},"，讓它成為一張更",{color:"yellow",text:"完整的地圖"},"。\n 最後，非常感謝 ",{color:"gold",text:"Cosmic"}," 推廣 ",{color:"aqua",text:"Skylands"}," 活動並給了我這個機會！\n ",{color:"gray",text:"不過，呃... 我大概不會再參加第二次了。",extra:[{underlined:true,text:"五告踢盎咩",hover_event:{action:"show_text",value:["",{color:"gray",text:"閩南語的＂有夠累的＂"}]}},"。 -w-"]}]
data modify storage pc:lang sys.lobby.author.social set value {text:"社群媒體",color:"#BE66DC",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.author.discord set value [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"\uf001 ","font":"pc:sys/icon",shadow_color:0,color:"white",type:"text"},{text:"Discord : ",type:"text"},{text:"papercricel",click_event:{action:"copy_to_clipboard",value:"papercricel"},underlined:1b,hover_event:{action:"show_text",value:[{text:"點我複製 ID！",type:"text"}]},type:"text"}]
data modify storage pc:lang sys.lobby.author.twitter set value [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"\uf002 ","font":"pc:sys/icon",shadow_color:0,color:"white",type:"text"},{text:"Twitter : ",type:"text"},{text:"@CricelPaper",click_event:{action:"open_url",url:"https://x.com/CricelPaper"},underlined:1b,hover_event:{action:"show_text",value:[{text:"點我開啟連結！",type:"text"}]},type:"text"}]

    # Lobby - char select
data modify storage pc:lang sys.lobby.char.details set value {text:"詳細資訊",color:"#3FA0E1",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.char.warrior set value '戰士'

    # Lobby - maps menu
data modify storage pc:lang sys.lobby.maps.title set value {text:"選擇地圖",color:"#F07848",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.maps.minecraft set value {text:"[Minecraft]",color:"gray",click_event:{action:"run_command",command:"/trigger pc.trigger set 00001"},hover_event:{action:"show_text",value:[{text:"點我！"}]}}
data modify storage pc:lang sys.lobby.maps.coming_soon set value {text:"[敬請期待]",color:"gray"}

    # Lobby - settings menu
data modify storage pc:lang sys.lobby.settings.title set value {text:"設定",color:"#C5D4CF",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.settings.tutorial_label set value {text:"教學提示："}
data modify storage pc:lang sys.lobby.settings.lang.label set value {text:"語言："}
data modify storage pc:lang sys.lobby.settings.lang.option set value [{text:"",color:"gray"},{text:"[English]",color:"gray",click_event:{action:"run_command",command:"/trigger pc.trigger set 10002"},hover_event:{action:"show_text",value:[{text:"Click Me!"}]}}," | ",{text:"[繁體中文]",color:"#72bd7a",click_event:{action:"run_command",command:"/trigger pc.trigger set 10003"},hover_event:{action:"show_text",value:[{text:"點我！"}]}}," | ",{text:"[简体中文]",color:"gray",click_event:{action:"run_command",command:"/trigger pc.trigger set 10004"},hover_event:{action:"show_text",value:[{text:"点我！"}]}}]
data modify storage pc:lang sys.lobby.gameplay.locked set value {text:"* 遊戲進行中無法更改設定。",color:"red"}
data modify storage pc:lang sys.lobby.settings.false set value {text:"[關閉]",color:"red"}
data modify storage pc:lang sys.lobby.settings.true set value {text:"[開啟]",color:"#72bd7a"}

    # Lobby - settings menu : ascension
data modify storage pc:lang sys.lobby.settings.ascension.tough_enemies.desc set value ["所有敵人增加 10% ",{text:"血量",color:"#F1DE61"},{text:"2",font:"pc:sys/icon"},"。"]
data modify storage pc:lang sys.lobby.settings.ascension.poor_elites.desc set value ["精英掉落的",{text:"金錢",color:"#F1DE61"},{text:"3",font:"pc:sys/icon"},"減少 25%。"]
data modify storage pc:lang sys.lobby.settings.ascension.lost_slots.desc set value ["初始減少 1 個",{text:"技能欄位",color:"#F1DE61"},"。"]
data modify storage pc:lang sys.lobby.settings.ascension.label set value {text:"進階："}
data modify storage pc:lang sys.lobby.settings.ascension.tough_enemies.label set value [{text:"",font:"pc:sys/modifier",hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.tough_enemies.desc",storage:"pc:lang",interpret:1b}}},{text:" 強韌敵人：",font:"minecraft:default"}]
data modify storage pc:lang sys.lobby.settings.ascension.poor_elites.label set value [{text:"",font:"pc:sys/modifier",hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.poor_elites.desc",storage:"pc:lang",interpret:1b}}},{text:" 貧窮精英：",font:"minecraft:default"}]
data modify storage pc:lang sys.lobby.settings.ascension.lost_slots.label set value [{text:"",font:"pc:sys/modifier",hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.lost_slots.desc",storage:"pc:lang",interpret:1b}}},{text:" 欄位缺失：",font:"minecraft:default"}]

    # Lobby - world text_display labels
data modify storage pc:lang sys.lobby.ui.author set value {text:"作者",color:"white"}
data modify storage pc:lang sys.lobby.ui.click_me set value {text:"點我！"}
data modify storage pc:lang sys.lobby.ui.character set value {text:"角色選擇",color:"white"}
data modify storage pc:lang sys.lobby.ui.gameplay set value {text:"遊戲設定",color:"white"}
data modify storage pc:lang sys.lobby.ui.click_info set value {text:"* 點擊查看資訊 *",color:"gray"}
data modify storage pc:lang sys.lobby.ui.click_choose set value {text:"* 點擊選擇 *",color:"gray"}
data modify storage pc:lang sys.lobby.ui.select_first set value {text:"* 請先選擇角色 *",color:"gray"}

    # Lobby - entity CustomName (copied via 'set from storage'; CustomName can't resolve nbt)
data modify storage pc:lang sys.lobby.name.author set value "Paper_Cricel"
data modify storage pc:lang sys.lobby.name.coming_soon.1 set value {text:"義大利麵",color:"gray"}
data modify storage pc:lang sys.lobby.name.coming_soon.2 set value {text:"就是要配",color:"gray"}
data modify storage pc:lang sys.lobby.name.coming_soon.3 set value {text:"42號混泥土",color:"gray"}
data modify storage pc:lang sys.lobby.name.start_game set value "開始遊戲"
data modify storage pc:lang sys.lobby.name.game_started set value {text:"* 遊戲已開始 *",color:"gray",type:"text"}
data modify storage pc:lang sys.lobby.name.maps set value "地圖"
data modify storage pc:lang sys.lobby.name.settings set value "設定"

    # Final stats screen labels
data modify storage pc:lang sys.lobby.end.final_stats set value {text:"最終統計",color:"#8ECFE3",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.end.victory set value {text:"勝利",color:"green",bold:1b}
data modify storage pc:lang sys.lobby.end.death set value ["",{color:"red",bold:1b,text:"死亡"},{color:"dark_gray",text:" 於第 "},{color:"dark_gray",score:{name:"$level",objective:"pc.game"}},{color:"dark_gray",text:" 關"}]
data modify storage pc:lang sys.lobby.end.char_stat set value {color:"gray",text:" 角色數據 : "}
data modify storage pc:lang sys.lobby.end.hp set value [{color:"gray",text:" 血量"},{"font":"pc:sys/icon","text":"2",type:"text",color:"white"}]
data modify storage pc:lang sys.lobby.end.energy set value [{color:"gray",text:" 能量"},{"font":"pc:sys/icon","text":"0",type:"text",color:"white"}]
data modify storage pc:lang sys.lobby.end.item_slot set value {color:"gray",text:" 物品欄位 : "}
data modify storage pc:lang sys.lobby.end.equipment set value {color:"gray",text:" 裝備欄位 : "}
data modify storage pc:lang sys.lobby.end.money set value {color:"gray",text:" 金錢 : "}
data modify storage pc:lang sys.lobby.end.total set value {color:"gray",text:"總計 "}
data modify storage pc:lang sys.lobby.end.spent set value {color:"gray",text:"花費 "}
data modify storage pc:lang sys.lobby.end.remain set value {color:"gray",text:"剩餘 "}
data modify storage pc:lang sys.lobby.end.dmg set value {color:"gray",text:" 傷害 : "}
data modify storage pc:lang sys.lobby.end.dealt set value {color:"gray",text:"造成 "}
data modify storage pc:lang sys.lobby.end.taken set value {color:"gray",text:"承受 "}
data modify storage pc:lang sys.lobby.end.ascension set value {color:"#aa80ad",text:" 進階 : "}

    # Combat end
data modify storage pc:lang sys.combat.chest_title set value {text:"選擇一個物品"}
data modify storage pc:lang sys.combat.obtain set value {text:"獲得 ",type:"text"}
data modify storage pc:lang sys.combat.picked_up set value {text:" 撿起了 ",color:"gray",type:"text"}
data modify storage pc:lang sys.combat.money set value {text:"金錢",color:"#F1DE61",type:"text"}
data modify storage pc:lang sys.combat.continue set value {text:"* 你踏上了你的旅途！",color:"gray",type:"text"}
data modify storage pc:lang sys.combat.finish_turn set value {text:"* 結束，這回合！",color:"gray",type:"text"}
data modify storage pc:lang sys.combat.finish_game set value {text:"* 遊戲結束！",color:"gray",type:"text"}

    # Rest area
data modify storage pc:lang sys.rest_area.rest set value "◆   休息   ◆"
data modify storage pc:lang sys.rest_area.exit_game set value {color:"dark_gray",text:"退出遊戲"}
data modify storage pc:lang sys.rest_area.campfire_base set value "營火基地"
data modify storage pc:lang sys.rest_area.back set value "返回"
data modify storage pc:lang sys.trader.armor_store set value [{text:"鐵匠商店"}]
data modify storage pc:lang sys.trader.travel_store set value [{text:"旅人商店"}]

    # Titles / misc UI
data modify storage pc:lang sys.ui.click_to_start set value "點擊開始"
data modify storage pc:lang sys.ui.login_title set value ["",{text:"◇ ",color:"#983CC6",type:"text"},{text:"迷璃競技場",color:"gold",type:"text"},{text:" ◇",color:"#983CC6",type:"text"}]
data modify storage pc:lang sys.ui.login_subtitle set value {text:"By 紙圓 (Paper_Cricel)",color:"white",type:"text"}
data modify storage pc:lang sys.ui.complete set value {text:"你成功挑戰了迷璃競技場！",color:"gold",type:"text"}
data modify storage pc:lang sys.ui.defeat set value {text:"死亡",color:"#FA2E2E",bold:1b,type:"text"}
data modify storage pc:lang sys.ui.journey_ends set value [{text:"* 你的旅程在此結束。",color:"gray",type:"text"}]

# HUD / Actionbar labels (font:pc:sys/default = immune to Force Unicode Font)
data modify storage pc:lang sys.hud.hp set value {text:" 血量 ",bold:1b}
data modify storage pc:lang sys.hud.energy set value {color:"gold",text:" 能量 ",bold:1b}
data modify storage pc:lang sys.hud.money set value {color:"#f4cd72",text:" 金錢 ",bold:1b}
data modify storage pc:lang sys.hud.durability set value {color:"#3fa0e1",text:" 耐久度 ",bold:1b}
data modify storage pc:lang sys.hud.enemy_turn set value {text:"敵方回合",color:"#CE76DA"}
data modify storage pc:lang sys.hud.your_turn set value {text:"你的回合",color:"#71EDA5"}
    # Turn banner offsets
data modify storage pc:lang sys.hud.offset.your_turn_front set value "\uf010\uf005"
data modify storage pc:lang sys.hud.offset.your_turn_back set value "\uf050\uf001"
data modify storage pc:lang sys.hud.offset.enemy_turn_front set value "\uf010\uf005"
data modify storage pc:lang sys.hud.offset.enemy_turn_back set value "\uf050\uf001"
    # Rest-area actionbar offsets
data modify storage pc:lang sys.hud.offset.front set value "\uf070\uf00b"
data modify storage pc:lang sys.hud.offset.back set value "\uf100\uf070\uf004"
data modify storage pc:lang sys.hud.offset.mid set value "\uf200\uf050\uf006\ue00b"
    # Combat-turn actionbar offsets
data modify storage pc:lang sys.hud.offset.turn_front set value "\uf060"
data modify storage pc:lang sys.hud.offset.turn_back set value "\uf200\uf005\uf00b"

    # Refuse (subtitle)
data modify storage pc:lang sys.refuse.no_char set value {text:"請選擇一個角色"}
data modify storage pc:lang sys.refuse.started set value {text:"遊戲已經開始"}
data modify storage pc:lang sys.refuse.invalid_slot set value {text:"格子無法選擇"}
data modify storage pc:lang sys.refuse.no_energy set value {text:"能量不足"}
data modify storage pc:lang sys.refuse.no_db set value {text:"耐久度不足"}
data modify storage pc:lang sys.refuse.anvil_busy set value {text:"鐵砧無法修復"}
data modify storage pc:lang sys.refuse.hotbar set value "快捷欄 "
data modify storage pc:lang sys.refuse.invalid_item set value "無效的物品"
data modify storage pc:lang sys.refuse.infinite_db set value "無限耐久度"
data modify storage pc:lang sys.refuse.durability set value "耐久度"
data modify storage pc:lang sys.refuse.is_full set value " 已滿"

    # Tutorial
data modify storage pc:lang sys.tutorial.drop set value ["",{color:"gray",text:"* "},{color:"blue",text:"丟出物品"},{color:"gray",text:"來"},{color:"yellow",text:"查看其效果"},{color:"gray",text:"（例如"},{color:"#7ABFF1",text:"力量"},{color:"gray",text:"）。從寶箱"},{color:"blue",text:"丟出的物品"},{color:"yellow",text:"也適用"},{color:"gray",text:"。"}]
data modify storage pc:lang sys.tutorial.hotbar set value ["",{color:"gray",text:"",extra:[{underlined:true,text:"[提示]"}," 你的快捷欄有 "]},{color:"yellow",text:"3 種顏色的欄位"},{color:"gray",text:"：\n"},{color:"#72BD7A",text:" ● "},{color:"#E3A867",text:"橘色欄位"},{color:"gray",text:"用於"},{color:"#D983F4",text:"移動物品\n"},{color:"#72BD7A",text:" ● "},{color:"#6291BA",text:"藍色欄位"},{color:"gray",text:"用於"},{color:"#D983F4",text:"修復物品\n"},{color:"#72BD7A",text:" ● "},{color:"#6FD4A5",text:"綠色欄位"},{color:"gray",text:"用於"},{color:"#D983F4",text:"技能物品\n"},{color:"gray",text:"另外，別忘了查看"},{color:"yellow",text:"每個物品的說明"},{color:"gray",text:"！"}]
data modify storage pc:lang sys.tutorial.campfire set value ["",{color:"gray",underlined:true,text:"[提示]"},{color:"blue",text:" 右鍵"},{color:"white",text:"休息"},{color:"gray",text:"以查看。"}]
data modify storage pc:lang sys.tutorial.trader set value ["",{color:"gray",underlined:true,text:"[提示]"},{color:"blue",text:" 右鍵"},{color:"white",text:"商人頭部"},{color:"gray",text:"以查看。"}]

        # Tutorial pages
data modify storage pc:lang sys.tutorial.page.1 set value ["",{color:"blue",text:"右鍵"},"可選擇的方塊來",{color:"yellow",text:"使用物品"},"。"]
data modify storage pc:lang sys.tutorial.page.2 set value ["",{color:"blue",text:"蹲下"},"並",{color:"blue",text:"看向"},"敵人來",{color:"yellow",text:"查看他們的意圖"},"。"]
data modify storage pc:lang sys.tutorial.page.3 set value ["",{color:"blue",text:"手持"},"受損的物品並",{color:"blue",text:"右鍵"},{color:"#7ABBF1",text:"鐵砧"},"來啟動",{color:"#D983F4",text:"修復模式"},"。"]
data modify storage pc:lang sys.tutorial.page.4 set value ["注意：每當你",{color:"yellow",text:"使用物品"},"時，敵人會",{color:"blue",text:"改變他們的意圖位置"},"。"]

# Armors
data modify storage pc:lang item.chest.entrench set value {"text":"鞏固"}
data modify storage pc:lang lore.chest.entrench set value [[{color:"gray",text:"回合開始時："}],[{color:"#7ABFF1",text:"護盾"},"僅會失去 5 點。"],[],[{color:"gray",text:"每獲得"},{color:"#7ABFF1",text:"護盾"},{color:"gray",text:" 3 次："}],["對所有敵人造成 6 點傷害。"],[{color:"#72BD7A",text:"● "},{color:"gray",text:"次數：",extra:[{nbt:"item.combat.times",storage:"pc:temp"}]}]]

data modify storage pc:lang item.chest.glass_cannon set value {"text":"玻璃大砲"}
data modify storage pc:lang lore.chest.glass_cannon set value [[{"color":"gray","text":"造成傷害時："}],["造成的傷害增加 50%。"],[{"italic":false,"color":"white","text":""}],[{"color":"gray","text":"受傷時："}],["受到的傷害增加 50%。"]]

data modify storage pc:lang item.chest.repair_core set value {"text":"工匠精神"}
data modify storage pc:lang lore.chest.repair_core set value [[{color:"gray",text:"每有一個處於"},{color:"#d983f4",text:"修復模式"},{color:"gray",text:"的鐵砧："}],["本回合獲得 2 點",{color:"#7ABFF1",text:"力量"},"。"],[],[{color:"gray",text:"每次戰鬥開始時："}],["增加所有",{color:"#D983F4",text:"技能物品"}," 1 點",{color:"#F1DE61",text:"最大耐久度"},{"font":"pc:sys/icon","text":"1"},"。"]]

data modify storage pc:lang item.feet.energy_surge set value {"text":"能量湧動"}
data modify storage pc:lang lore.feet.energy_surge set value [[{color:"gray",text:"每當消耗任何物品的"},{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},{color:"gray",text:"時："}],["對所有 ",{color:"#7ABBF1",text:"3x3格 "},"內的敵人造成"],["同等 (",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},") 點傷害。"],[],[{color:"gray",text:"使用"},{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},{color:"gray",text:"消耗大於等於 2 的物品時："}],["此物品",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"不會被消耗。"],["每回合只能觸發一次。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 本回合："},{nbt:"item.combat.this_turn",storage:"pc:temp",interpret:1b}]]

data modify storage pc:lang item.feet.footwork set value {"text":"靈動步法"}
data modify storage pc:lang lore.feet.footwork set value [[{color:"gray",text:"每回合使用的第 4 個物品："}],[{color:"#f1de61",text:"耐久度"},{"font":"pc:sys/icon","text":"1"},"不會被消耗。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 次數：",extra:[{nbt:"item.combat.times",storage:"pc:temp"}]}],[],[{color:"gray",text:"每次戰鬥開始時："}],["增加",{color:"#D983F4",text:"移動物品"}," 2 點",{color:"#f1de61",text:"最大耐久度"},{"font":"pc:sys/icon","text":"1"},"。"]]

data modify storage pc:lang item.feet.vigilance set value {"text":"警戒"}
data modify storage pc:lang lore.feet.vigilance set value [[{color:"gray",text:"每回合開始時："}],["本回合每有一位在 ",{color:"#7ABBF1",text:"9格十字 "},"範圍內的敵人，"],["就增加",{color:"#D983F4",text:"移動物品"}," 1 點",{color:"#F1DE61",text:"最大耐久度"},{font:"pc:sys/icon",text:"1"},"。"],[],[{color:"gray",text:"每回合結束時："}],["將",{color:"#D983F4",text:"移動物品"},"的每點",{color:"#f1de61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"轉換為 3 點",{color:"#7ABBF1",text:"活力"},"。"]]

data modify storage pc:lang item.head.frenzied set value {"text":"狂暴"}
data modify storage pc:lang lore.head.frenzied set value [[{color:"gray",text:"每第 4 次攻擊："}],["攻擊傷害翻倍。"],["獲得 1 點",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"。"],[{color:"#72BD7A",text:"● "},{color:"gray",text:"次數："},{nbt:"item.combat.count",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.head.gold_greed set value {"text":"貪財"}
data modify storage pc:lang lore.head.gold_greed set value [[{color:"gray",text:"戰鬥結束時："}],["獲得額外 50% 的",{color:"#F1DE61",text:"金錢"},{font:"pc:sys/icon",text:"3"},"。"],[],[{color:"gray",text:"擊殺時："}],["如果敵人不是",{color:"#7ABBF1",text:"爪牙"},"，獲得 3 ",{color:"#F1DE61",text:"金錢"},{font:"pc:sys/icon",text:"3"},"。"]]

data modify storage pc:lang item.head.min_passion set value {"text":"三分鐘熱度"}
data modify storage pc:lang lore.head.min_passion set value [[{color:"gray",text:"每次戰鬥開始時："}],["獲得 3 點",{color:"#7ABFF1",text:"力量"},"。獲得 3 點",{color:"#F1DE61",text:"能量"},{"font":"pc:sys/icon","text": "0"},"。"],[],[{color:"gray",text:"如果 3 回合內沒有任何人死亡："}],["失去 1 點",{color:"#7ABFF1",text:"力量"},"。失去 1 點",{color:"#F1DE61",text:"能量"},{"font":"pc:sys/icon","text": "0"},"。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 回合：",extra:[{nbt:"item.combat.turn",storage:"pc:temp"}]}]]

data modify storage pc:lang item.legs.iron_resolve set value {"text":"鋼鐵意志"}
data modify storage pc:lang lore.legs.iron_resolve set value [[{color:"gray",text:"如果"},{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},{color:"gray",text:"低於 50%："}],["造成的傷害增加 50%。"],["在回合開始時，回復 1 點",{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},"。"],[],[{color:"gray",text:"在你第 1 次死亡時："}],["將",{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},"設為 1。"],["此物品會在戰鬥結束時被摧毀。"]]

data modify storage pc:lang item.legs.jerk_reflex set value {"text":"膝跳反射"}
data modify storage pc:lang lore.legs.jerk_reflex set value [[{color:"gray",text:"回合開始時："}],["上一回合你每受到攻擊"],["1 次，獲得 2 點",{color:"#7ABFF1",text:"護盾"},"。"],[],[{color:"gray",text:"失去"},{color:"#f1de61",text:"血量"},{font:"pc:sys/icon",text:"2"},{color:"gray",text:"時："}],["少失去 1 點。"]]

data modify storage pc:lang item.legs.residual_defense set value {"text":"殘存護甲"}
data modify storage pc:lang lore.legs.residual_defense set value [[{color:"gray",text:"回合結束時："}],["將剩餘的每點",{color:"#f1de61",text:"能量"},{"font":"pc:sys/icon","text": "0"},"轉換為 3 點",{color:"#7ABFF1",text:"護盾"},"。"],["如果",{color:"#f1de61",text:"能量"},{"font":"pc:sys/icon","text": "0"},"大於等於 4，",{color:"#7abbf1",text:"護盾"},"不會在"],["你的下回合開始時被移除。"]]

# Items

    # Move
data modify storage pc:lang item.move.basic set value {"text":"移動"}
data modify storage pc:lang lore.move.basic set value [["移動 1 格。"],[],[{color:"gray",text:"每回合："}],["恢復所有",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.move.bishop set value {"text":"主教"}
data modify storage pc:lang lore.move.bishop set value [["移動 1 格。"],["可選擇 ",{color:"#7ABBF1",text:"3x3格"}," 內的範圍。"],[],[{color:"gray",text:"所有"},{color:"#D983F4",text:"技能物品"},{color:"gray",text:"："}],["可額外選擇斜向 ",{color:"#7ABBF1",text:"1格十字"}," 內的範圍。"],[],[{color:"gray",text:"每回合："}],["恢復所有",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.move.ender_pearl set value {"text":"終界珍珠"}
data modify storage pc:lang lore.move.ender_pearl set value [["移動 1 格。可選擇 ",{color:"#7ABBF1",text:"7x7格 "},"內的範圍。"],["如果沒有",{color:"#7abbf1",text:"幻影"},"存在，失去 1 點",{color:"#f1de61",text:"血量"},{font:"pc:sys/icon",text:"2"}],["並在原來的位置召喚",{color:"#7abbf1",text:"幻影"}," (1 點",{color:"#f1de61",text:"血量"},{font:"pc:sys/icon",text:"2"},")。"],[],[{color:"gray",text:"每回合："}],["恢復所有",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.move.jump set value {"text":"跳躍"}
data modify storage pc:lang lore.move.jump set value [["移動最多 2 格，無視被佔用的方塊。"],[],[{color:"gray",text:"每回合第 1 次使用"},{color:"#d983f4",text:"移動物品"},{color:"gray",text:"時："}],["獲得 1 層",{color:"#7ABFF1",text:"爆擊"},"。"],[],[{color:"gray",text:"每回合："}],["恢復所有",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.move.minecart set value {"text":"礦車"}
data modify storage pc:lang lore.move.minecart set value [["移動 1 格或移動到",{color:"#7abbf1",text:"鐵軌區域"},"方塊。"],["在當前方塊釋放",{color:"#7abbf1",text:"鐵軌區域"},"。"],[],[{color:"gray",text:"如果選擇的方塊上有任何人："}],["造成 4 點傷害。給予 1 層",{color:"#7abbf1",text:"虛弱"},"。",{color:"#7abbf1",text:"擊退"},"。"],[],[{color:"gray",text:"每回合："}],["恢復所有",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

    # Repair
data modify storage pc:lang item.repair.basic set value {"text":"鐵砧"}
data modify storage pc:lang lore.repair.basic set value [["召喚",{color:"#7abbf1",text:"鐵砧"}," (6 點",{color:"#F1DE61",text:"血量"},{color:"white",font:"pc:sys/icon",text:"2"},")。"],["需要 2 回合來修復 3 點",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"],[],[{color:"gray",text:"每回合："}],["恢復 1 點",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.repair.magma set value {"text":"熔岩鐵砧"}
data modify storage pc:lang lore.repair.magma set value [["召喚",{color:"#7abbf1",text:"鐵砧"}," (12 點",{color:"#F1DE61",text:"血量"},{color:"white",font:"pc:sys/icon",text:"2"},")。"],["需要 2 回合來修復 3 點",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"],["它免疫",{color:"#7abbf1",text:"火焰區域"},"傷害。"],[],[{color:"gray",text:"當鐵砧死亡時："}],["它會在 ",{color:"#7ABBF1",text:"1格十字 "},"範圍內釋放 4 層",{color:"#7abbf1",text:"火焰區域"},"。"],[],[{color:"gray",text:"每回合："}],["恢復 1 點",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.repair.rugged set value {"text":"強壯鐵砧"}
data modify storage pc:lang lore.repair.rugged set value [["召喚",{color:"#7abbf1",text:"鐵砧"}," (18 點",{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},")。"],["需要 3 回合來修復所有",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"。"],["每回合，它會給予所有位於 ",{color:"#7ABBF1",text:"3x3格 "}],["內的友軍 3 點",{color:"#7ABBF1",text:"護盾"},"。"],[],[{color:"gray",text:"當鐵砧完成修復時："}],["獲得 2 點",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"。"],[],[{color:"gray",text:"每回合："}],["恢復 1 點",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.repair.curious set value {"text":"好奇鐵砧"}
data modify storage pc:lang lore.repair.curious set value [["召喚",{color:"#7abbf1",text:"鐵砧"}," (",{nbt:"item.combat.hpmax",storage:"pc:temp"}," 點",{color:"#F1DE61",text:"血量"},{color:"white",font:"pc:sys/icon",text:"2"},")。"],["需要 2 回合來修復 3 點",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"],[{italic:false,color:"white",text:""}],[{color:"gray",text:"當鐵砧完成修復時："}],["如果 ",{color:"#7ABBF1",text:"1格十字 "},"範圍內有敵人，"],["修復者獲得 2 點",{color:"#7ABBF1",text:"力量"},"。"],[{italic:false,color:"white",text:""}],[{color:"gray",text:"當鐵砧被任何人摧毀時："}],["召喚出的",{color:"#7abbf1",text:"鐵砧"},"增加 2 點",{color:"#F1DE61",text:"最大血量"},{font:"pc:sys/icon",text:"2"},"，"],["修復者下回合獲得 1 點",{color:"#F1DE61",text:"能量"},{color:"white",font:"pc:sys/icon",text:"0"},"。"],[{italic:false,color:"white",text:""}],[{color:"gray",text:"每回合："}],["恢復 1 點",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.repair.wireless set value {"text":"無線鐵砧"}
data modify storage pc:lang lore.repair.wireless set value [["召喚",{color:"#7abbf1",text:"鐵砧"}," (6 點",{color:"#F1DE61",text:"血量"},{color:"white",font:"pc:sys/icon",text:"2"},")。"],["每回合修復 2 點",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"，持續 3 回合。"],["可以從任何地方啟動",{color:"#D983F4",text:"修復模式"},"。"],[],[{color:"gray",text:"處於"},{color:"#d983f4",text:"修復模式"},{color:"gray",text:"時："}],["物品不會被",{color:"#FF6065",text:"禁用"},"。"],[],[{color:"gray",text:"每回合若沒有任何鐵砧存在："}],["恢復 1 點",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

    # Skill
data modify storage pc:lang item.skill.warrior/blazing_meteorite set value {"text":"烈焰隕石"}
data modify storage pc:lang lore.skill.warrior/blazing_meteorite set value [["對所有在 ",{color:"#7ABBF1",text:"3x3格 "},"內的敵人造成 18 點傷害"],["並釋放 6 層",{color:"#7ABFF1",text:"火焰區域"},"。",{color:"#ff6065",text:"禁用"},"此物品 2 回合。"],["可以選擇任何方塊。"]]

data modify storage pc:lang item.skill.warrior/borrowed_time set value {"text":"預借時間"}
data modify storage pc:lang lore.skill.warrior/borrowed_time set value [["獲得等同 (",{color:"#F1DE61",text:"最大能量"},{color:"white","font":"pc:sys/icon","text": "0"},") 的",{color:"#F1DE61",text:"能量"},{color:"white","font":"pc:sys/icon","text": "0"},"，"],["但下回合會失去等量的能量。"],[""],[{color:"gray",text:"每回合："}],["恢復 1 點",{color:"#F1DE61",text:"耐久度"},{color:"white","font":"pc:sys/icon","text":"1"},"。"]]

data modify storage pc:lang item.skill.warrior/brittle_assault set value {"text":"脆弱猛擊"}
data modify storage pc:lang lore.skill.warrior/brittle_assault set value [["造成 2 點傷害。本回合每消耗 1 點"],[{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"，就額外增加 2 點傷害。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 消耗量："},{nbt:"item.combat.count",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/cactus set value {"text":"仙人掌"}
data modify storage pc:lang lore.skill.warrior/cactus set value [["造成 3 點傷害 2 次。"],[],[{color:"gray",text:"受傷時："}],["對攻擊者造成 4 點傷害。"]]

data modify storage pc:lang item.skill.warrior/fading_compass set value {"text":"落魄羅盤"}
data modify storage pc:lang lore.skill.warrior/fading_compass set value [["對 ",{color:"#7ABBF1",text:"3x3格 "},"內的所有敵人造成 4 點傷害。"],["每有 1 點",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"就重複此效果 1 次。"],[],[{color:"gray",text:"回合結束時："}],["獲得等同 (",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},") 的",{color:"#7ABFF1",text:"護盾"},"。"],["消耗 1 點",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.skill.warrior/flint_and_steel set value {"text":"打火機"}
data modify storage pc:lang lore.skill.warrior/flint_and_steel set value [["釋放 3 層",{color:"#7ABFF1",text:"火焰區域"},"。"],["可選擇 ",{color:"#7ABBF1",text:"5x5格 "},"內的範圍。"]]

data modify storage pc:lang item.skill.warrior/heal_liquor set value {"text":"療育烈酒"}
data modify storage pc:lang lore.skill.warrior/heal_liquor set value [["回復 50% 的",{color:"#F1DE61",text:"最大血量"},{font:"pc:sys/icon",text:"2"}],["並給予 1 層",{color:"#7ABFF1",text:"苦痛"},"。"],[],[{color:"gray",text:"失去"},{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},{color:"gray",text:"時："}],["每失去 1 點",{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},"，就獲得 3 點",{color:"#7ABFF1",text:"活力"},"。"]]

data modify storage pc:lang item.skill.warrior/hemorrhage set value {"text":"出血"}
data modify storage pc:lang lore.skill.warrior/hemorrhage set value [["造成 4 點傷害並給予 3 層",{"text":"易傷","color":"#7ABFF1"},"。"],["可選擇 ",{color:"#7ABBF1",text:"2格十字"}," 內的範圍。"]]

data modify storage pc:lang item.skill.warrior/momentum set value {"text":"動能"}
data modify storage pc:lang lore.skill.warrior/momentum set value [["造成 4 點傷害。本回合每消耗"],["1 點",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"就重複此效果 1 次。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 重複："},{nbt:"item.combat.repeat",storage:"pc:temp",color:"gray"}],[],[{color:"gray",text:"當消耗 5 點"},{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},{color:"gray",text:"時："}],["獲得 1 點",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 次數："},{nbt:"item.combat.count",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/op_potion set value [{color:"#FF8787",text:"無",bold:1b},{color:"#FFF183",text:"敵"},{color:"#8FFF96",text:"大"},{color:"#92C4FF",text:"藥"},{color:"#FB8CFF",text:"水"}]
data modify storage pc:lang lore.skill.warrior/op_potion set value [["給予 20 點",{"text":"力量","color":"#7ABFF1"},"。"]]

data modify storage pc:lang item.skill.warrior/parrying set value {"text":"招架"}
data modify storage pc:lang lore.skill.warrior/parrying set value [["獲得 7 點",{color:"#7ABFF1",text:"護盾"},"。本回合",{color:"#ff6065",text:"禁用"},{color:"#D983F4",text:"移動物品"},"。"],[],[{color:"gray",text:"受傷時："}],[{color:"#7ABFF1",text:"擊退"},"攻擊者。如果成功格擋，恢復 1 點"],[{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"並在下回合獲得 1 點",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"。"]]

data modify storage pc:lang item.skill.warrior/silent_axe set value {"text":"沉默之斧"}
data modify storage pc:lang lore.skill.warrior/silent_axe set value [["造成 8 點傷害。敵人身上每有 1 層"],[{color:"#7ABFF1",text:"易傷"},"，就額外增加 3 點傷害。"],[],[{color:"gray",text:"回合結束時："}],["自動瞄準直線或斜線方向。"],["給予前方 3 格內的所有敵人"],["2 層",{color:"#7ABFF1",text:"易傷"},"。"]]

data modify storage pc:lang item.skill.warrior/biased_force set value {"text":"蠻力偏差"}
data modify storage pc:lang lore.skill.warrior/biased_force set value [["獲得 3 點",{color:"#7abbf1",text:"力量"},"。"],[],[{color:"gray",text:"回合開始時："}],["如果",{color:"#7abbf1",text:"力量"},"為 1 或更多，"],["失去 1 點",{color:"#7abbf1",text:"力量"},"。"]]

data modify storage pc:lang item.skill.warrior/engulfed_pain set value {"text":"吞噬之痛"}
data modify storage pc:lang lore.skill.warrior/engulfed_pain set value [["給予 ",{color:"#7ABBF1",text:"3x3格 "},"內的所有敵人 3 層",{color:"#7ABBF1",text:"易傷"},"。"],["可以選擇任何方塊。"],[],[{color:"gray",text:"回合結束時，如果"},{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},{color:"gray",text:"大於 0："}],["所有敵人身上每有 1 層",{color:"#7abbf1",text:"易傷"},"，"],["就對他們造成 1 點傷害。"]]

data modify storage pc:lang item.skill.warrior/training_sword set value {"text":"訓練用劍"}
data modify storage pc:lang lore.skill.warrior/training_sword set value [["造成 4 點傷害。"],[],[{color:"gray",text:"每第 3 次攻擊："}],["給予 4 層",{color:"#7ABBF1",text:"易傷"},"。"],[{color:"#72BD7A",text:"● "},{color:"gray",text:"次數："},{nbt:"item.combat.times",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/deterrence set value {"text":"威懾"}
data modify storage pc:lang lore.skill.warrior/deterrence set value [["對 ",{color:"#7ABBF1",text:"3x3格 "},"內的所有敵人造成 4 點傷害。"],["每擊中一個敵人，本回合獲得 2 點",{color:"#7ABBF1",text:"力量"},"。"]]

data modify storage pc:lang item.skill.warrior/taunt set value {"text":"嘲諷"}
data modify storage pc:lang lore.skill.warrior/taunt set value [["給予前方 3 格內的所有"],["敵人 2 層",{color:"#7ABBF1",text:"易傷"},"。"],[],[{color:"gray",text:"每使用此物品 3 次："}],["獲得 12 點",{color:"#7ABBF1",text:"護盾"},"。"],["將敵人的",{color:"#7ABBF1",text:"易傷"},"層數翻倍。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 次數："},{nbt:"item.combat.times",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/repair_jade set value {"text":"工匠翡翠"}
data modify storage pc:lang lore.skill.warrior/repair_jade set value [["本回合獲得等同 (",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},") 點",{color:"#7ABBF1",text:"力量"},"。"],["將本回合的",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"消耗設為 1。"]]

data modify storage pc:lang item.skill.warrior/dejavu set value {"text":"既視感"}
data modify storage pc:lang lore.skill.warrior/dejavu set value [["造成 14 點傷害。免費使用你"],["上次使用的",{color:"#D983F4",text:"技能物品"},"。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 上次使用："},{nbt:"item.combat.last",storage:"pc:temp",color:"gray",interpret:1b}],[],[{color:"gray",text:"每回合開始時："}],["如果你還沒有使用過任何",{color:"#D983F4",text:"技能物品"},"，"],[{color:"#FF6065",text:"禁用"},"此物品。"]]

data modify storage pc:lang item.skill.warrior/inferno set value {"text":"煉獄"}
data modify storage pc:lang lore.skill.warrior/inferno set value [["獲得 3 點",{color:"#7ABBF1",text:"護盾"},"，並在 ",{color:"#7ABBF1",text:"3x3格 "}],["內釋放 2 層",{color:"#7ABBF1",text:"火焰區域"},"。"],["可選擇 ",{color:"#7ABBF1",text:"3x3格 "},"內的範圍。"]]

data modify storage pc:lang item.skill.warrior/yama_double set value {"text":"閻王替身"}
data modify storage pc:lang lore.skill.warrior/yama_double set value [["釋放 4 層",{color:"#7ABBF1",text:"火焰區域"},"並立即觸發"],["敵人位置上的所有",{color:"#7ABBF1",text:"火焰區域"},"。"],[],[{color:"gray",text:"每回合開始時："}],["如果任何敵人的",{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},"低於 25%，"],["他們將直接死亡。"]]

# Game Level
data modify storage pc:lang game.level.minecraft.cave set value {text:"洞穴",color:"white"}
data modify storage pc:lang game.level.minecraft.crimson_forest set value {text:"緋紅森林",color:"white"}
data modify storage pc:lang game.level.minecraft.deepslate_cave set value {text:"深板岩洞穴",color:"red"}
data modify storage pc:lang game.level.minecraft.ender_dragon set value {text:"終界龍",color:"light_purple"}
data modify storage pc:lang game.level.minecraft.forest set value {text:"森林",color:"white"}
data modify storage pc:lang game.level.minecraft.mineshaft set value {text:"廢棄礦坑",color:"white"}
data modify storage pc:lang game.level.minecraft.nether set value {text:"地獄",color:"white"}
data modify storage pc:lang game.level.minecraft.nether_fortress set value {text:"地獄要塞",color:"white"}
data modify storage pc:lang game.level.minecraft.stronghold set value {text:"終界祭壇",color:"white"}
data modify storage pc:lang game.level.minecraft.tutorial set value {text:"教學關卡",color:"white"}
data modify storage pc:lang game.level.minecraft.zombie_village set value {text:"殭屍村莊",color:"red"}

# current language (kept in sync so the settings menu shows the right toggle)
data modify storage pc:settings lang set value "zh_tw"
