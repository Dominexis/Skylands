function pc:sys/lang/reset

# System
data modify storage pc:lang sys.lore.ability set value {text: "能力", color: "#F5B055", "bold": true}
data modify storage pc:lang sys.lore.details set value {text: "详细信息", color: "#3FA0E1", "bold": true}
data modify storage pc:lang sys.lore.db.value set value "耐久度"
data modify storage pc:lang sys.lore.category set value "类别"
data modify storage pc:lang sys.lore.category_type.skill set value "技能"
data modify storage pc:lang sys.lore.category_type.move set value "移动"
data modify storage pc:lang sys.lore.category_type.repair set value "修复"
data modify storage pc:lang sys.lore.category_type.head set value "头部"
data modify storage pc:lang sys.lore.category_type.chest set value "胸部"
data modify storage pc:lang sys.lore.category_type.legs set value "腿部"
data modify storage pc:lang sys.lore.category_type.feet set value "脚部"
data modify storage pc:lang sys.lore.category_type.option set value "选项"
data modify storage pc:lang sys.lore.price set value "价格"
data modify storage pc:lang sys.lore.triggered set value {"text":"已触发","color":"#72BD7A"}
data modify storage pc:lang sys.lore.untriggered set value {"text":"未触发","color":"gray"}
data modify storage pc:lang sys.lore.rarity set value "稀有度"
data modify storage pc:lang sys.lore.rarity_type.basic set value {"text":"基础","color":"gray"}
data modify storage pc:lang sys.lore.rarity_type.common set value {"text":"普通","color":"#E7D9AD"}
data modify storage pc:lang sys.lore.rarity_type.rare set value {"text":"稀有","color":"#7ABBF1"}
data modify storage pc:lang sys.lore.rarity_type.epic set value {"text":"史诗","color":"#D983F4"}
data modify storage pc:lang sys.item.feature.title set value {text: "物品效果", color:"#A7DFA4", "bold": true}
data modify storage pc:lang sys.item.disable set value ["",{"color":"#ff6065","text":"禁用物品 "},{"color":"dark_gray","text":"["},{"color":"gray","nbt":"item.disable_turn","storage":"pc:temp","extra":[" 回合"]},{"color":"dark_gray","text":"]"}]

    # Options
data modify storage pc:lang sys.item.option.money set value {text:"金钱",color:"yellow"}
data modify storage pc:lang sys.lore.option.money set value {"text":"","italic":false,"color":"white","extra":["获得 ",{"nbt":"loot.money","storage":"pc:temp"}," ",{"text":"金钱","color":"#F1DE61"},"。"] }
data modify storage pc:lang sys.item.option.campfire.hpmax set value {"text": "生命提升"}
data modify storage pc:lang sys.lore.option.campfire.hpmax set value {"text": "","italic": false,"color": "white","extra": ["增加 3 点",{"text": "最大血量","color": "#F1DE61"},{"font":"pc:sys/icon","text":"2","color": "white"},"。"]}
data modify storage pc:lang sys.item.option.campfire.epmax set value {"text": "能量提升"}
data modify storage pc:lang sys.lore.option.campfire.epmax set value {"text": "","italic": false,"color": "white","extra": ["增加 1 点",{"text": "最大能量","color": "#F1DE61"},{"font":"pc:sys/icon","text":"0","color": "white"},"。"]}
data modify storage pc:lang sys.item.option.campfire.skill_slot set value {"text": "栏位提升"}
data modify storage pc:lang sys.lore.option.campfire.skill_slot set value {"text": "","italic": false,"color": "white","extra": ["增加 1 个",{"text": "技能栏位","color": "#F1DE61"},"。"]}
data modify storage pc:lang sys.item.option.tip set value " 如何查看效果？"
data modify storage pc:lang sys.lore.option.tip set value [[{italic:false,color:"white",text:""},{color:"blue",text:"丢出物品"},{color:"gray",text:"来"},{color:"yellow",text:"查看其效果"},{color:"gray",text:"（例如"},{color:"#7ABFF1",text:"力量"},{color:"gray",text:"）。"}],[{italic:false,color:"white",text:""},{color:"gray",text:"从宝箱"},{color:"blue",text:"丢出的物品"},{color:"yellow",text:"也适用"},{color:"gray",text:"。"}]]
data modify storage pc:lang sys.item.option.end_turn set value {"color": "#4AB274","text": "结束回合 "}
data modify storage pc:lang sys.lore.option.end_turn set value "结束回合。"
data modify storage pc:lang sys.item.option.tutorial.next_page set value {"text":"","italic":false,"color":"yellow","extra":["第 ",{"score":{"name":"$combat.tutorial.page","objective":"pc.game"}}," 页，共 4 页"]}
data modify storage pc:lang sys.lore.option.tutorial.next_page set value {"text":"","italic":false,"color":"white","extra":["翻到下一页。"]}
data modify storage pc:lang sys.item.option.tutorial.prev_page set value {"text":"","italic":false,"color":"yellow","extra":["第 ",{"score":{"name":"$combat.tutorial.page","objective":"pc.game"}}," 页，共 4 页"]}
data modify storage pc:lang sys.lore.option.tutorial.prev_page set value {"text":"","italic":false,"color":"white","extra":["翻到上一页。"]}

# Floating combat text (pc:sys/fx/text/use)
data modify storage pc:lang sys.fx.booty set value {text:"赃物",color:"#7B7987"}
data modify storage pc:lang sys.fx.booty_wear set value {text:"赃物\n效果结束",color:"#7B7987"}
data modify storage pc:lang sys.fx.dragon_scale set value [{color:"#4EABC2",text:"龙"},{color:"#4944DB",text:"鳞"}]
data modify storage pc:lang sys.fx.reflex set value {color:"#9adfe4",text:"膝跳反射"}
data modify storage pc:lang sys.fx.undying_shell set value {text:"不死之躯",color:"#8c679c"}
data modify storage pc:lang sys.fx.rusty set value {text:"生锈",color:"#5f361b"}
data modify storage pc:lang sys.fx.explosion set value {color:"#dd0a0a",text:"¡¡¡大爆炸!!!"}
data modify storage pc:lang sys.fx.vigilance set value {text:"警戒",color:"#5872F4"}
data modify storage pc:lang sys.fx.power_through set value {color:"#ff7272",text:"硬撑"}
data modify storage pc:lang sys.fx.strength_wear set value {text:"力量\n效果结束",color:"gray"}
data modify storage pc:lang sys.fx.revive set value {text:"复活",color:"#e7c65d"}
data modify storage pc:lang sys.fx.iron_resolve set value {color:"#ffc299",text:"钢铁意志"}
data modify storage pc:lang sys.fx.iron_resolve_wear set value {color:"gray",text:"钢铁意志\n效果结束"}
data modify storage pc:lang sys.fx.ook_ook set value {text:"咕咕嘎嘎",color:"#B62F32"}
data modify storage pc:lang sys.fx.boredom set value {text:"无聊",color:"#e0aa7a"}
data modify storage pc:lang sys.fx.gold_greed set value {text:"贪财",color:"#F1DE61"}
data modify storage pc:lang sys.fx.frenzied set value {text:"狂暴",color:"red"}
data modify storage pc:lang sys.fx.bias set value {color:"#844b25",text:"偏差"}
data modify storage pc:lang sys.fx.gentle_wear set value {color:"#91d4a4",text:"温柔\n效果结束"}
data modify storage pc:lang sys.fx.jump set value {color:"#ffcb83",text:"跳跃"}
data modify storage pc:lang sys.fx.parrying set value {text:"招架",color:"#e665e6"}
data modify storage pc:lang sys.fx.enmity set value {text:"反目成仇",color:"#852FD1"}
data modify storage pc:lang sys.fx.vigor set value {color:"#ff9d3b",text:"活力"}
data modify storage pc:lang sys.fx.switch set value {color:"#cb70e4",text:"交换"}
data modify storage pc:lang sys.fx.whet set value {text:"打磨",color:"#D28D44"}
data modify storage pc:lang sys.fx.stubborn set value {color:"#974bd5",text:"顽固"}
data modify storage pc:lang sys.fx.learned set value {text:"增长见闻",color:"#a1b8be"}
data modify storage pc:lang sys.fx.energized set value {color:"#fb9b47",text:"充满活力"}
data modify storage pc:lang sys.fx.blocked set value {text:"格挡",color:"#a4ada6"}
data modify storage pc:lang sys.fx.stunned set value {color:"#ecd578",text:"眩晕"}
data modify storage pc:lang sys.fx.interrupt set value {text:"打断",color:"#9295f5"}
data modify storage pc:lang sys.fx.rally set value {text:"集结",color:"#F0A1D5"}
function pc:sys/lang/nouns/zh_cn

    # Lobby - author intro
data modify storage pc:lang sys.lobby.author.title set value [{text:" ◇ —— ",color:"gray",type:"text"},{text:"纸圆 (Paper_Cricel)",color:"#8ECFE3",bold:1b,type:"text"},{text:" —— ◇ ",color:"gray",type:"text"}]
data modify storage pc:lang sys.lobby.author.intro set value [" 嗨！我是 ",{color:"#BAE9E9",text:"纸圆 PaperCricel"}," .w.\n 这张地图",{color:"yellow",text:"深受",extra:[{underlined:true,click_event:{action:"open_url",url:"https://youtu.be/dQw4w9WgXcQ"},hover_event:{action:"show_text",value:["",{text:"点击查看"}]},text:"《",extra:[{text:"杀戮尖塔"},"》"]}]},"的启发，一款我很喜欢的游戏！但由于杀戮尖塔太难了，所以我就决定做一款属于",{color:"yellow",text:"自己的回合制肉鸽"},"，",{color:"blue",text:"改了不少游戏玩法"},"、",{color:"blue",text:"增加了一些容错率"},"，希望你会喜欢最终成品！(。・ω・。)\n\n 我有空的时候会继续",{color:"blue",text:"加入更多内容"},"，让它成为一张更",{color:"yellow",text:"完整的地图"},"。\n 最后，非常感谢 ",{color:"gold",text:"Cosmic"}," 推广 ",{color:"aqua",text:"Skylands"}," 活动并给了我这个机会！\n ",{color:"gray",text:"不过，呃... 我大概不会再参加第二次了。",extra:[{underlined:true,text:"五告踢盎咩",hover_event:{action:"show_text",value:["",{color:"gray",text:"闽南语的“有够累的”"}]}},"。 -w-"]}]
data modify storage pc:lang sys.lobby.author.social set value {text:"社交媒体",color:"#BE66DC",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.author.discord set value [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"\uf001 ","font":"pc:sys/icon",shadow_color:0,color:"white",type:"text"},{text:"Discord : ",type:"text"},{text:"papercricel",click_event:{action:"copy_to_clipboard",value:"papercricel"},underlined:1b,hover_event:{action:"show_text",value:[{text:"点我复制 ID！",type:"text"}]},type:"text"}]
data modify storage pc:lang sys.lobby.author.twitter set value [{text:" ",color:"gray",type:"text"},{text:"● ",color:"#72BD7A",type:"text"},{text:"\uf002 ","font":"pc:sys/icon",shadow_color:0,color:"white",type:"text"},{text:"Twitter : ",type:"text"},{text:"@CricelPaper",click_event:{action:"open_url",url:"https://x.com/CricelPaper"},underlined:1b,hover_event:{action:"show_text",value:[{text:"点我开启链接！",type:"text"}]},type:"text"}]

    # Lobby - char select
data modify storage pc:lang sys.lobby.char.details set value {text:"详细信息",color:"#3FA0E1",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.char.warrior set value '战士'

    # Lobby - maps menu
data modify storage pc:lang sys.lobby.maps.title set value {text:"选择地图",color:"#F07848",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.maps.minecraft set value {text:"[Minecraft]",color:"gray",click_event:{action:"run_command",command:"/trigger pc.trigger set 00001"},hover_event:{action:"show_text",value:[{text:"点我！"}]}}
data modify storage pc:lang sys.lobby.maps.coming_soon set value {text:"[敬请期待]",color:"gray"}

    # Lobby - settings menu
data modify storage pc:lang sys.lobby.settings.title set value {text:"设置",color:"#C5D4CF",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.settings.tutorial_label set value {text:"教学提示："}
data modify storage pc:lang sys.lobby.settings.lang.label set value {text:"语言："}
data modify storage pc:lang sys.lobby.settings.lang.option set value [{text:"",color:"gray"},{text:"[English]",color:"gray",click_event:{action:"run_command",command:"/trigger pc.trigger set 10002"},hover_event:{action:"show_text",value:[{text:"Click Me!"}]}}," | ",{text:"[繁體中文]",color:"gray",click_event:{action:"run_command",command:"/trigger pc.trigger set 10003"},hover_event:{action:"show_text",value:[{text:"點我！"}]}}," | ",{text:"[简体中文]",color:"#72bd7a",click_event:{action:"run_command",command:"/trigger pc.trigger set 10004"},hover_event:{action:"show_text",value:[{text:"点我！"}]}}]
data modify storage pc:lang sys.lobby.gameplay.locked set value {text:"* 游戏进行中无法更改设置。",color:"red"}
data modify storage pc:lang sys.lobby.settings.false set value {text:"[关闭]",color:"red"}
data modify storage pc:lang sys.lobby.settings.true set value {text:"[开启]",color:"#72bd7a"}

    # Lobby - settings menu : ascension
data modify storage pc:lang sys.lobby.settings.ascension.tough_enemies.desc set value ["所有敌人增加 10% ",{text:"血量",color:"#F1DE61"},{text:"2",font:"pc:sys/icon"},"。"]
data modify storage pc:lang sys.lobby.settings.ascension.poor_elites.desc set value ["精英掉落的",{text:"金钱",color:"#F1DE61"},{text:"3",font:"pc:sys/icon"},"减少 25%。"]
data modify storage pc:lang sys.lobby.settings.ascension.lost_slots.desc set value ["初始减少 1 个",{text:"技能栏位",color:"#F1DE61"},"。"]
data modify storage pc:lang sys.lobby.settings.ascension.label set value {text:"进阶："}
data modify storage pc:lang sys.lobby.settings.ascension.tough_enemies.label set value [{text:"",font:"pc:sys/modifier",hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.tough_enemies.desc",storage:"pc:lang",interpret:1b}}},{text:" 强韧敌人：",font:"minecraft:default"}]
data modify storage pc:lang sys.lobby.settings.ascension.poor_elites.label set value [{text:"",font:"pc:sys/modifier",hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.poor_elites.desc",storage:"pc:lang",interpret:1b}}},{text:" 贫穷精英：",font:"minecraft:default"}]
data modify storage pc:lang sys.lobby.settings.ascension.lost_slots.label set value [{text:"",font:"pc:sys/modifier",hover_event:{action:"show_text",value:{nbt:"sys.lobby.settings.ascension.lost_slots.desc",storage:"pc:lang",interpret:1b}}},{text:" 栏位缺失：",font:"minecraft:default"}]

    # Lobby - world text_display labels
data modify storage pc:lang sys.lobby.ui.author set value {text:"作者",color:"white"}
data modify storage pc:lang sys.lobby.ui.click_me set value {text:"点我！"}
data modify storage pc:lang sys.lobby.ui.character set value {text:"角色选择",color:"white"}
data modify storage pc:lang sys.lobby.ui.gameplay set value {text:"游戏设置",color:"white"}
data modify storage pc:lang sys.lobby.ui.click_info set value {text:"* 点击查看信息 *",color:"gray"}
data modify storage pc:lang sys.lobby.ui.click_choose set value {text:"* 点击选择 *",color:"gray"}
data modify storage pc:lang sys.lobby.ui.select_first set value {text:"* 请先选择角色 *",color:"gray"}

    # Lobby - entity CustomName (copied via 'set from storage'; CustomName can't resolve nbt)
data modify storage pc:lang sys.lobby.name.author set value "Paper_Cricel"
data modify storage pc:lang sys.lobby.name.coming_soon.1 set value {text:"意大利面",color:"gray"}
data modify storage pc:lang sys.lobby.name.coming_soon.2 set value {text:"就是要配",color:"gray"}
data modify storage pc:lang sys.lobby.name.coming_soon.3 set value {text:"42号混凝土",color:"gray"}
data modify storage pc:lang sys.lobby.name.start_game set value "开始游戏"
data modify storage pc:lang sys.lobby.name.game_started set value {text:"* 游戏已开始 *",color:"gray",type:"text"}
data modify storage pc:lang sys.lobby.name.maps set value "地图"
data modify storage pc:lang sys.lobby.name.settings set value "设置"

    # Final stats screen labels
data modify storage pc:lang sys.lobby.end.final_stats set value {text:"最终统计",color:"#8ECFE3",bold:1b,type:"text"}
data modify storage pc:lang sys.lobby.end.victory set value {text:"胜利",color:"green",bold:1b}
data modify storage pc:lang sys.lobby.end.death set value ["",{color:"red",bold:1b,text:"死亡"},{color:"dark_gray",text:" 于第 "},{color:"dark_gray",score:{name:"$level",objective:"pc.game"}},{color:"dark_gray",text:" 关"}]
data modify storage pc:lang sys.lobby.end.char_stat set value {color:"gray",text:" 角色数据 : "}
data modify storage pc:lang sys.lobby.end.hp set value [{color:"gray",text:" 血量"},{"font":"pc:sys/icon","text":"2",type:"text",color:"white"}]
data modify storage pc:lang sys.lobby.end.energy set value [{color:"gray",text:" 能量"},{"font":"pc:sys/icon","text":"0",type:"text",color:"white"}]
data modify storage pc:lang sys.lobby.end.item_slot set value {color:"gray",text:" 物品栏位 : "}
data modify storage pc:lang sys.lobby.end.equipment set value {color:"gray",text:" 装备栏位 : "}
data modify storage pc:lang sys.lobby.end.money set value {color:"gray",text:" 金钱 : "}
data modify storage pc:lang sys.lobby.end.total set value {color:"gray",text:"总计 "}
data modify storage pc:lang sys.lobby.end.spent set value {color:"gray",text:"花费 "}
data modify storage pc:lang sys.lobby.end.remain set value {color:"gray",text:"剩余 "}
data modify storage pc:lang sys.lobby.end.dmg set value {color:"gray",text:" 伤害 : "}
data modify storage pc:lang sys.lobby.end.dealt set value {color:"gray",text:"造成 "}
data modify storage pc:lang sys.lobby.end.taken set value {color:"gray",text:"承受 "}
data modify storage pc:lang sys.lobby.end.ascension set value {color:"#aa80ad",text:" 进阶 : "}

    # Combat end
data modify storage pc:lang sys.combat.chest_title set value {text:"选择一个物品"}
data modify storage pc:lang sys.combat.obtain set value {text:"获得 ",type:"text"}
data modify storage pc:lang sys.combat.picked_up set value {text:" 捡起了 ",color:"gray",type:"text"}
data modify storage pc:lang sys.combat.money set value {text:"金钱",color:"#F1DE61",type:"text"}
data modify storage pc:lang sys.combat.continue set value {text:"* 你踏上了你的旅途！",color:"gray",type:"text"}
data modify storage pc:lang sys.combat.finish_turn set value {text:"* 结束，这回合！",color:"gray",type:"text"}
data modify storage pc:lang sys.combat.finish_game set value {text:"* 游戏结束！",color:"gray",type:"text"}

    # Rest area
data modify storage pc:lang sys.rest_area.rest set value "◆   休息   ◆"
data modify storage pc:lang sys.rest_area.exit_game set value {color:"dark_gray",text:"退出游戏"}
data modify storage pc:lang sys.rest_area.campfire_base set value "营火基地"
data modify storage pc:lang sys.rest_area.back set value "返回"
data modify storage pc:lang sys.trader.armor_store set value [{text:"铁匠商店"}]
data modify storage pc:lang sys.trader.travel_store set value [{text:"旅人商店"}]

    # Titles / misc UI
data modify storage pc:lang sys.ui.click_to_start set value "点击开始"
data modify storage pc:lang sys.ui.login_title set value ["",{text:"◇ ",color:"#983CC6",type:"text"},{text:"迷璃竞技场",color:"gold",type:"text"},{text:" ◇",color:"#983CC6",type:"text"}]
data modify storage pc:lang sys.ui.login_subtitle set value {text:"By 纸圆 (Paper_Cricel)",color:"white",type:"text"}
data modify storage pc:lang sys.ui.complete set value {text:"你成功挑战了迷璃竞技场！",color:"gold",type:"text"}
data modify storage pc:lang sys.ui.defeat set value {text:"死亡",color:"#FA2E2E",bold:1b,type:"text"}
data modify storage pc:lang sys.ui.journey_ends set value [{text:"* 你的旅程在此结束。",color:"gray",type:"text"}]

# HUD / Actionbar labels (font:pc:sys/default = immune to Force Unicode Font)
data modify storage pc:lang sys.hud.hp set value {text:" 血量 ",bold:1b}
data modify storage pc:lang sys.hud.energy set value {color:"gold",text:" 能量 ",bold:1b}
data modify storage pc:lang sys.hud.money set value {color:"#f4cd72",text:" 金钱 ",bold:1b}
data modify storage pc:lang sys.hud.durability set value {color:"#3fa0e1",text:" 耐久度 ",bold:1b}
data modify storage pc:lang sys.hud.enemy_turn set value {text:"敌方回合",color:"#CE76DA"}
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
data modify storage pc:lang sys.refuse.no_char set value {text:"请选择一个角色"}
data modify storage pc:lang sys.refuse.started set value {text:"游戏已经开始"}
data modify storage pc:lang sys.refuse.invalid_slot set value {text:"格子无法选择"}
data modify storage pc:lang sys.refuse.no_energy set value {text:"能量不足"}
data modify storage pc:lang sys.refuse.no_db set value {text:"耐久度不足"}
data modify storage pc:lang sys.refuse.anvil_busy set value {text:"铁砧无法修复"}
data modify storage pc:lang sys.refuse.hotbar set value "快捷栏 "
data modify storage pc:lang sys.refuse.invalid_item set value "无效的物品"
data modify storage pc:lang sys.refuse.infinite_db set value "无限耐久度"
data modify storage pc:lang sys.refuse.durability set value "耐久度"
data modify storage pc:lang sys.refuse.is_full set value " 已满"

    # Tutorial
data modify storage pc:lang sys.tutorial.drop set value ["",{color:"gray",text:"* "},{color:"blue",text:"丢出物品"},{color:"gray",text:"来"},{color:"yellow",text:"查看其效果"},{color:"gray",text:"（例如"},{color:"#7ABFF1",text:"力量"},{color:"gray",text:"）。从宝箱"},{color:"blue",text:"丢出的物品"},{color:"yellow",text:"也适用"},{color:"gray",text:"。"}]
data modify storage pc:lang sys.tutorial.hotbar set value ["",{color:"gray",text:"",extra:[{underlined:true,text:"[提示]"}," 你的快捷栏有 "]},{color:"yellow",text:"3 种颜色的栏位"},{color:"gray",text:"：\n"},{color:"#72BD7A",text:" ● "},{color:"#E3A867",text:"橘色栏位"},{color:"gray",text:"用于"},{color:"#D983F4",text:"移动物品\n"},{color:"#72BD7A",text:" ● "},{color:"#6291BA",text:"蓝色栏位"},{color:"gray",text:"用于"},{color:"#D983F4",text:"修复物品\n"},{color:"#72BD7A",text:" ● "},{color:"#6FD4A5",text:"绿色栏位"},{color:"gray",text:"用于"},{color:"#D983F4",text:"技能物品\n"},{color:"gray",text:"另外，别忘了查看"},{color:"yellow",text:"每个物品的说明"},{color:"gray",text:"！"}]
data modify storage pc:lang sys.tutorial.campfire set value ["",{color:"gray",underlined:true,text:"[提示]"},{color:"blue",text:" 右键"},{color:"white",text:"休息"},{color:"gray",text:"以查看。"}]
data modify storage pc:lang sys.tutorial.trader set value ["",{color:"gray",underlined:true,text:"[提示]"},{color:"blue",text:" 右键"},{color:"white",text:"商人头部"},{color:"gray",text:"以查看。"}]

        # Tutorial pages
data modify storage pc:lang sys.tutorial.page.1 set value ["",{color:"blue",text:"右键"},"可选择的方块来",{color:"yellow",text:"使用物品"},"。"]
data modify storage pc:lang sys.tutorial.page.2 set value ["",{color:"blue",text:"潜行"},"并",{color:"blue",text:"看向"},"敌人来",{color:"yellow",text:"查看他们的意图"},"。"]
data modify storage pc:lang sys.tutorial.page.3 set value ["",{color:"blue",text:"手持"},"受损的物品并",{color:"blue",text:"右键"},{color:"#7ABBF1",text:"铁砧"},"来启动",{color:"#D983F4",text:"修复模式"},"。"]
data modify storage pc:lang sys.tutorial.page.4 set value ["注意：每当你",{color:"yellow",text:"使用物品"},"时，敌人会",{color:"blue",text:"改变他们的意图位置"},"。"]

# Armors
data modify storage pc:lang item.chest.entrench set value {"text":"巩固"}
data modify storage pc:lang lore.chest.entrench set value [[{color:"gray",text:"回合开始时："}],[{color:"#7ABFF1",text:"护盾"},"仅会失去 5 点。"],[],[{color:"gray",text:"每获得"},{color:"#7ABFF1",text:"护盾"},{color:"gray",text:" 3 次："}],["对所有敌人造成 6 点伤害。"],[{color:"#72BD7A",text:"● "},{color:"gray",text:"次数：",extra:[{nbt:"item.combat.times",storage:"pc:temp"}]}]]

data modify storage pc:lang item.chest.glass_cannon set value {"text":"玻璃大炮"}
data modify storage pc:lang lore.chest.glass_cannon set value [[{"color":"gray","text":"造成伤害时："}],["造成的伤害增加 50%。"],[{"italic":false,"color":"white","text":""}],[{"color":"gray","text":"受伤时："}],["受到的伤害增加 50%。"]]

data modify storage pc:lang item.chest.repair_core set value {"text":"工匠精神"}
data modify storage pc:lang lore.chest.repair_core set value [[{color:"gray",text:"每有一个处于"},{color:"#d983f4",text:"修复模式"},{color:"gray",text:"的铁砧："}],["本回合获得 2 点",{color:"#7ABFF1",text:"力量"},"。"],[],[{color:"gray",text:"每次战斗开始时："}],["增加所有",{color:"#D983F4",text:"技能物品"}," 1 点",{color:"#F1DE61",text:"最大耐久度"},{"font":"pc:sys/icon","text":"1"},"。"]]

data modify storage pc:lang item.feet.energy_surge set value {"text":"能量涌动"}
data modify storage pc:lang lore.feet.energy_surge set value [[{color:"gray",text:"每当消耗任何物品的"},{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},{color:"gray",text:"时："}],["对所有 ",{color:"#7ABBF1",text:"3x3格 "},"内的敌人造成"],["同等 (",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},") 点伤害。"],[],[{color:"gray",text:"使用"},{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},{color:"gray",text:"消耗大于等于 2 的物品时："}],["此物品",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"不会被消耗。"],["每回合只能触发一次。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 本回合："},{nbt:"item.combat.this_turn",storage:"pc:temp",interpret:1b}]]

data modify storage pc:lang item.feet.footwork set value {"text":"灵动步法"}
data modify storage pc:lang lore.feet.footwork set value [[{color:"gray",text:"每回合使用的第 4 个物品："}],[{color:"#f1de61",text:"耐久度"},{"font":"pc:sys/icon","text":"1"},"不会被消耗。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 次数：",extra:[{nbt:"item.combat.times",storage:"pc:temp"}]}],[],[{color:"gray",text:"每次战斗开始时："}],["增加",{color:"#D983F4",text:"移动物品"}," 2 点",{color:"#f1de61",text:"最大耐久度"},{"font":"pc:sys/icon","text":"1"},"。"]]

data modify storage pc:lang item.feet.vigilance set value {"text":"警戒"}
data modify storage pc:lang lore.feet.vigilance set value [[{color:"gray",text:"每回合开始时："}],["本回合每有一位在 ",{color:"#7ABBF1",text:"9格十字 "},"范围内的敌人，"],["就增加",{color:"#D983F4",text:"移动物品"}," 1 点",{color:"#F1DE61",text:"最大耐久度"},{font:"pc:sys/icon",text:"1"},"。"],[],[{color:"gray",text:"每回合结束时："}],["将",{color:"#D983F4",text:"移动物品"},"的每点",{color:"#f1de61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"转换为 3 点",{color:"#7ABBF1",text:"活力"},"。"]]

data modify storage pc:lang item.head.frenzied set value {"text":"狂暴"}
data modify storage pc:lang lore.head.frenzied set value [[{color:"gray",text:"每第 4 次攻击："}],["攻击伤害翻倍。"],["获得 1 点",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"。"],[{color:"#72BD7A",text:"● "},{color:"gray",text:"次数："},{nbt:"item.combat.count",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.head.gold_greed set value {"text":"贪财"}
data modify storage pc:lang lore.head.gold_greed set value [[{color:"gray",text:"战斗结束时："}],["获得额外 50% 的",{color:"#F1DE61",text:"金钱"},{font:"pc:sys/icon",text:"3"},"。"],[],[{color:"gray",text:"击杀时："}],["如果敌人不是",{color:"#7ABBF1",text:"爪牙"},"，获得 3 ",{color:"#F1DE61",text:"金钱"},{font:"pc:sys/icon",text:"3"},"。"]]

data modify storage pc:lang item.head.min_passion set value {"text":"三分钟热度"}
data modify storage pc:lang lore.head.min_passion set value [[{color:"gray",text:"每次战斗开始时："}],["获得 3 点",{color:"#7ABFF1",text:"力量"},"。获得 3 点",{color:"#F1DE61",text:"能量"},{"font":"pc:sys/icon","text": "0"},"。"],[],[{color:"gray",text:"如果 3 回合内没有任何人死亡："}],["失去 1 点",{color:"#7ABFF1",text:"力量"},"。失去 1 点",{color:"#F1DE61",text:"能量"},{"font":"pc:sys/icon","text": "0"},"。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 回合：",extra:[{nbt:"item.combat.turn",storage:"pc:temp"}]}]]

data modify storage pc:lang item.legs.iron_resolve set value {"text":"钢铁意志"}
data modify storage pc:lang lore.legs.iron_resolve set value [[{color:"gray",text:"如果"},{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},{color:"gray",text:"低于 50%："}],["造成的伤害增加 50%。"],["在回合开始时，回复 1 点",{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},"。"],[],[{color:"gray",text:"在你第 1 次死亡时："}],["将",{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},"设为 1。"],["此物品会在战斗结束时被摧毁。"]]

data modify storage pc:lang item.legs.jerk_reflex set value {"text":"膝跳反射"}
data modify storage pc:lang lore.legs.jerk_reflex set value [[{color:"gray",text:"回合开始时："}],["上一回合你每受到攻击"],["1 次，获得 2 点",{color:"#7ABBF1",text:"护盾"},"。"],[],[{color:"gray",text:"失去"},{color:"#f1de61",text:"血量"},{font:"pc:sys/icon",text:"2"},{color:"gray",text:"时："}],["少失去 1 点。"]]

data modify storage pc:lang item.legs.residual_defense set value {"text":"残存护甲"}
data modify storage pc:lang lore.legs.residual_defense set value [[{color:"gray",text:"回合结束时："}],["将剩余的每点",{color:"#f1de61",text:"能量"},{"font":"pc:sys/icon","text": "0"},"转换为 3 点",{color:"#7ABBF1",text:"护盾"},"。"],["如果",{color:"#f1de61",text:"能量"},{"font":"pc:sys/icon","text": "0"},"大于等于 4，",{color:"#7abbf1",text:"护盾"},"不会在"],["你的下回合开始时被移除。"]]

# Items

    # Move
data modify storage pc:lang item.move.basic set value {"text":"移动"}
data modify storage pc:lang lore.move.basic set value [["移动 1 格。"],[],[{color:"gray",text:"每回合："}],["恢复所有",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.move.bishop set value {"text":"主教"}
data modify storage pc:lang lore.move.bishop set value [["移动 1 格。"],["可选择 ",{color:"#7ABBF1",text:"3x3格"}," 内的范围。"],[],[{color:"gray",text:"所有"},{color:"#D983F4",text:"技能物品"},{color:"gray",text:"："}],["可额外选择斜向 ",{color:"#7ABBF1",text:"1格十字"}," 内的范围。"],[],[{color:"gray",text:"每回合："}],["恢复所有",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.move.ender_pearl set value {"text":"末影珍珠"}
data modify storage pc:lang lore.move.ender_pearl set value [["移动 1 格。可选择 ",{color:"#7ABBF1",text:"7x7格 "},"内的范围。"],["如果没有",{color:"#7abbf1",text:"幻影"},"存在，失去 1 点",{color:"#f1de61",text:"血量"},{font:"pc:sys/icon",text:"2"}],["并在原来的位置召唤",{color:"#7abbf1",text:"幻影"}," (1 点",{color:"#f1de61",text:"血量"},{font:"pc:sys/icon",text:"2"},")。"],[],[{color:"gray",text:"每回合："}],["恢复所有",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.move.jump set value {"text":"跳跃"}
data modify storage pc:lang lore.move.jump set value [["移动最多 2 格，忽视被占用的方块。"],[],[{color:"gray",text:"每回合第 1 次使用"},{color:"#d983f4",text:"移动物品"},{color:"gray",text:"时："}],["获得 1 层",{color:"#7ABFF1",text:"暴击"},"。"],[],[{color:"gray",text:"每回合："}],["恢复所有",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.move.minecart set value {"text":"矿车"}
data modify storage pc:lang lore.move.minecart set value [["移动 1 格或移动到",{color:"#7abbf1",text:"铁轨区域"},"方块。"],["在当前方块释放",{color:"#7abbf1",text:"铁轨区域"},"。"],[],[{color:"gray",text:"如果选择的方块上有任何人："}],["造成 4 点伤害。给予 1 层",{color:"#7abbf1",text:"虚弱"},"。",{color:"#7abbf1",text:"击退"},"。"],[],[{color:"gray",text:"每回合："}],["恢复所有",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

    # Repair
data modify storage pc:lang item.repair.basic set value {"text":"铁砧"}
data modify storage pc:lang lore.repair.basic set value [["召唤",{color:"#7abbf1",text:"铁砧"}," (6 点",{color:"#F1DE61",text:"血量"},{color:"white",font:"pc:sys/icon",text:"2"},")。"],["需要 2 回合来修复 3 点",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"],[],[{color:"gray",text:"每回合："}],["恢复 1 点",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.repair.magma set value {"text":"熔岩铁砧"}
data modify storage pc:lang lore.repair.magma set value [["召唤",{color:"#7abbf1",text:"铁砧"}," (12 点",{color:"#F1DE61",text:"血量"},{color:"white",font:"pc:sys/icon",text:"2"},")。"],["需要 2 回合来修复 3 点",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"],["它免疫",{color:"#7abbf1",text:"火焰区域"},"伤害。"],[],[{color:"gray",text:"当铁砧死亡时："}],["它会在 ",{color:"#7ABBF1",text:"1格十字 "},"范围内释放 4 层",{color:"#7abbf1",text:"火焰区域"},"。"],[],[{color:"gray",text:"每回合："}],["恢复 1 点",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.repair.rugged set value {"text":"强壮铁砧"}
data modify storage pc:lang lore.repair.rugged set value [["召唤",{color:"#7abbf1",text:"铁砧"}," (18 点",{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},")。"],["需要 3 回合来修复所有",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"。"],["每回合，它会给予所有位于 ",{color:"#7ABBF1",text:"3x3格 "}],["内的友军 3 点",{color:"#7ABBF1",text:"护盾"},"。"],[],[{color:"gray",text:"当铁砧完成修复时："}],["获得 2 点",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"。"],[],[{color:"gray",text:"每回合："}],["恢复 1 点",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.repair.curious set value {"text":"好奇铁砧"}
data modify storage pc:lang lore.repair.curious set value [["召唤",{color:"#7abbf1",text:"铁砧"}," (",{nbt:"item.combat.hpmax",storage:"pc:temp"}," 点",{color:"#F1DE61",text:"血量"},{color:"white",font:"pc:sys/icon",text:"2"},")。"],["需要 2 回合来修复 3 点",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"],[{italic:false,color:"white",text:""}],[{color:"gray",text:"当铁砧完成修复时："}],["如果 ",{color:"#7ABBF1",text:"1格十字 "},"范围内有敌人，"],["修复者获得 2 点",{color:"#7ABBF1",text:"力量"},"。"],[{italic:false,color:"white",text:""}],[{color:"gray",text:"当铁砧被任何人摧毁时："}],["召唤出的",{color:"#7abbf1",text:"铁砧"},"增加 2 点",{color:"#F1DE61",text:"最大血量"},{font:"pc:sys/icon",text:"2"},"，"],["修复者下回合获得 1 点",{color:"#F1DE61",text:"能量"},{color:"white",font:"pc:sys/icon",text:"0"},"。"],[{italic:false,color:"white",text:""}],[{color:"gray",text:"每回合："}],["恢复 1 点",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.repair.wireless set value {"text":"无线铁砧"}
data modify storage pc:lang lore.repair.wireless set value [["召唤",{color:"#7abbf1",text:"铁砧"}," (6 点",{color:"#F1DE61",text:"血量"},{color:"white",font:"pc:sys/icon",text:"2"},")。"],["每回合修复 2 点",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"，持续 3 回合。"],["可以从任何地方启动",{color:"#D983F4",text:"修复模式"},"。"],[],[{color:"gray",text:"处于结构"},{color:"#d983f4",text:"修复模式"},{color:"gray",text:"时："}],["物品不会被",{color:"#FF6065",text:"禁用"},"。"],[],[{color:"gray",text:"每回合若没有任何铁砧存在："}],["恢复 1 点",{color:"#F1DE61",text:"耐久度"},{color:"white",font:"pc:sys/icon",text:"1"},"。"]]

    # Skill
data modify storage pc:lang item.skill.warrior/blazing_meteorite set value {"text":"烈焰陨石"}
data modify storage pc:lang lore.skill.warrior/blazing_meteorite set value [["对所有在 ",{color:"#7ABBF1",text:"3x3格 "},"内的敌人造成 18 点伤害并"],["释放 6 层",{color:"#7ABFF1",text:"火焰区域"},"。",{color:"#ff6065",text:"禁用"},"此物品 2 回合。"],["可以选择任何方块。"]]

data modify storage pc:lang item.skill.warrior/borrowed_time set value {"text":"预借时间"}
data modify storage pc:lang lore.skill.warrior/borrowed_time set value [["获得等同 (",{color:"#F1DE61",text:"最大能量"},{color:"white","font":"pc:sys/icon","text": "0"},") 的",{color:"#F1DE61",text:"能量"},{color:"white","font":"pc:sys/icon","text": "0"},"，"],["但下回合会失去等量的能量。"],[""],[{color:"gray",text:"每回合："}],["恢复 1 点",{color:"#F1DE61",text:"耐久度"},{color:"white","font":"pc:sys/icon","text":"1"},"。"]]

data modify storage pc:lang item.skill.warrior/brittle_assault set value {"text":"脆弱猛击"}
data modify storage pc:lang lore.skill.warrior/brittle_assault set value [["造成 2 点伤害。本回合每消耗 1 点"],[{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"，就额外增加 2 点伤害。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 消耗量："},{nbt:"item.combat.count",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/cactus set value {"text":"仙人掌"}
data modify storage pc:lang lore.skill.warrior/cactus set value [["造成 3 点伤害 2 次。"],[],[{color:"gray",text:"受伤时："}],["对攻击者造成 4 点伤害。"]]

data modify storage pc:lang item.skill.warrior/fading_compass set value {"text":"落魄罗盘"}
data modify storage pc:lang lore.skill.warrior/fading_compass set value [["对 ",{color:"#7ABBF1",text:"3x3格 "},"内的所有敌人造成 4 点伤害。"],["每有 1 点",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"就重复此效果 1 次。"],[],[{color:"gray",text:"回合结束时："}],["获得等同 (",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},") 的",{color:"#7ABBF1",text:"护盾"},"。"],["消耗 1 点",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"。"]]

data modify storage pc:lang item.skill.warrior/flint_and_steel set value {"text":"打火机"}
data modify storage pc:lang lore.skill.warrior/flint_and_steel set value [["释放 3 层",{color:"#7ABFF1",text:"火焰区域"},"。"],["可选择 ",{color:"#7ABBF1",text:"5x5格 "},"内的范围。"]]

data modify storage pc:lang item.skill.warrior/heal_liquor set value {"text":"疗育烈酒"}
data modify storage pc:lang lore.skill.warrior/heal_liquor set value [["回复 50% 的",{color:"#F1DE61",text:"最大血量"},{color:"white","font":"pc:sys/icon","text":"2"}],["并给予 1 层",{color:"#7ABFF1",text:"苦痛"},"。"],[""],[{color:"gray",text:"失去"},{color:"#F1DE61",text:"血量"},{color:"white","font":"pc:sys/icon","text":"2"},{color:"gray",text:"时："}],["每失去 1 点",{color:"#F1DE61",text:"血量"},{color:"white","font":"pc:sys/icon","text":"2"},"，就获得 3 点",{color:"#7ABFF1",text:"活力"},"。"]]

data modify storage pc:lang item.skill.warrior/hemorrhage set value {"text":"出血"}
data modify storage pc:lang lore.skill.warrior/hemorrhage set value [["造成 4 点伤害并给予 3 层",{"text":"易伤","color":"#7ABFF1"},"。"],["可选择 ",{color:"#7ABBF1",text:"2格十字"}," 内的范围。"]]

data modify storage pc:lang item.skill.warrior/momentum set value {"text":"动能"}
data modify storage pc:lang lore.skill.warrior/momentum set value [["造成 4 点伤害。本回合每消耗"],["1 点",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"就重复此效果 1 次。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 重复："},{nbt:"item.combat.repeat",storage:"pc:temp",color:"gray"}],[],[{color:"gray",text:"当消耗 5 点"},{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},{color:"gray",text:"时："}],["获得 1 点",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 次数："},{nbt:"item.combat.count",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/op_potion set value [{color:"#FF8787",text:"无",bold:1b},{color:"#FFF183",text:"敌",bold:1b},{color:"#8FFF96",text:"大",bold:1b},{color:"#92C4FF",text:"药",bold:1b},{color:"#FB8CFF",text:"水",bold:1b}]
data modify storage pc:lang lore.skill.warrior/op_potion set value [["给予 20 点",{"text":"力量","color":"#7ABFF1"},"。"]]

data modify storage pc:lang item.skill.warrior/parrying set value {"text":"招架"}
data modify storage pc:lang lore.skill.warrior/parrying set value [["获得 7 點",{color:"#7ABBF1",text:"护盾"},"。本回合",{color:"#ff6065",text:"禁用"},{color:"#D983F4",text:"移动物品"},"。"],[],[{color:"gray",text:"受伤时："}],[{color:"#7ABFF1",text:"击退"},"攻击者。如果成功格挡，恢复 1 点"],[{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},"并在下回合获得 1 点",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"。"]]

data modify storage pc:lang item.skill.warrior/silent_axe set value {"text":"沉默之斧"}
data modify storage pc:lang lore.skill.warrior/silent_axe set value [["造成 8 点伤害。敌人身上每有 1 层"],[{color:"#7ABFF1",text:"易伤"},"，就额外增加 3 点伤害。"],[],[{color:"gray",text:"回合结束时："}],["自动瞄准直线或斜线方向。"],["给予前方 3 格内的所有敌人"],["2 层",{color:"#7ABFF1",text:"易傷"},"。"]]

data modify storage pc:lang item.skill.warrior/biased_force set value {"text":"蛮力偏差"}
data modify storage pc:lang lore.skill.warrior/biased_force set value [["获得 3 點",{color:"#7abbf1",text:"力量"},"。"],[],[{color:"gray",text:"回合开始时："}],["如果",{color:"#7abbf1",text:"力量"},"为 1 或更多，"],["失去 1 点",{color:"#7abbf1",text:"力量"},"。"]]

data modify storage pc:lang item.skill.warrior/engulfed_pain set value {"text":"吞噬之痛"}
data modify storage pc:lang lore.skill.warrior/engulfed_pain set value [["给予 ",{color:"#7ABBF1",text:"3x3格 "},"内的所有敌人 3 层",{color:"#7ABBF1",text:"易伤"},"。"],["可以选择任何方块。"],[],[{color:"gray",text:"回合结束时，如果"},{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},{color:"gray",text:"大于 0："}],["所有敌人身上每有 1 层",{color:"#7abbf1",text:"易伤"},"，"],["就对他们造成 1 点伤害。"]]

data modify storage pc:lang item.skill.warrior/training_sword set value {"text":"训练用剑"}
data modify storage pc:lang lore.skill.warrior/training_sword set value [["造成 4 点伤害。"],[],[{color:"gray",text:"每第 3 次攻击："}],["给予 4 层",{color:"#7ABFF1",text:"易伤"},"。"],[{color:"#72BD7A",text:"● "},{color:"gray",text:"次数："},{nbt:"item.combat.times",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/deterrence set value {"text":"威慑"}
data modify storage pc:lang lore.skill.warrior/deterrence set value [["对 ",{color:"#7ABBF1",text:"3x3格 "},"内的所有敌人造成 4 点伤害。"],["每击中一个敌人，本回合获得 2 点",{color:"#7ABFF1",text:"力量"},"。"]]

data modify storage pc:lang item.skill.warrior/taunt set value {"text":"嘲讽"}
data modify storage pc:lang lore.skill.warrior/taunt set value [["给予前方 3 格内的所有"],["敌人 2 层",{color:"#7ABFF1",text:"易伤"},"。"],[],[{color:"gray",text:"每使用此物品 3 次："}],["获得 12 点",{color:"#7ABBF1",text:"护盾"},"。"],["将敌人的",{color:"#7ABFF1",text:"易伤"},"层数翻倍。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 次数："},{nbt:"item.combat.times",storage:"pc:temp",color:"gray"}]]

data modify storage pc:lang item.skill.warrior/repair_jade set value {"text":"工匠翡翠"}
data modify storage pc:lang lore.skill.warrior/repair_jade set value [["本回合获得等同 (",{color:"#F1DE61",text:"耐久度"},{font:"pc:sys/icon",text:"1"},") 点",{color:"#7ABBF1",text:"力量"},"。"],["将本回合的",{color:"#F1DE61",text:"能量"},{font:"pc:sys/icon",text:"0"},"消耗设为 1。"]]

data modify storage pc:lang item.skill.warrior/dejavu set value {"text":"既视感"}
data modify storage pc:lang lore.skill.warrior/dejavu set value [["造成 14 点伤害。免费使用你"],["上次使用的",{color:"#D983F4",text:"技能物品"},"。"],[{color:"#72BD7A",text:"●"},{color:"gray",text:" 上次使用："},{nbt:"item.combat.last",storage:"pc:temp",color:"gray",interpret:1b}],[],[{color:"gray",text:"每回合开始时："}],["如果你还没有使用过任何",{color:"#D983F4",text:"技能物品"},"，"],[{color:"#FF6065",text:"停用"},"此物品。"]]

data modify storage pc:lang item.skill.warrior/inferno set value {"text":"炼狱"}
data modify storage pc:lang lore.skill.warrior/inferno set value [["获得 3 点",{color:"#7ABFF1",text:"护盾"},"，并在 ",{color:"#7ABBF1",text:"3x3格 "}],["内释放 2 层",{color:"#7ABFF1",text:"火焰区域"},"。"],["可选择 ",{color:"#7ABBF1",text:"3x3格 "},"内的范围。"]]

data modify storage pc:lang item.skill.warrior/yama_double set value {"text":"阎王替身"}
data modify storage pc:lang lore.skill.warrior/yama_double set value [["释放 4 层",{color:"#7ABFF1",text:"火焰区域"},"并立即触发"],["敌人位置上的所有",{color:"#7ABFF1",text:"火焰区域"},"。"],[],[{color:"gray",text:"每回合开始时："}],["如果任何敌人的",{color:"#F1DE61",text:"血量"},{font:"pc:sys/icon",text:"2"},"低于 25%，"],["他们将直接死亡。"]]

# Game Level
data modify storage pc:lang game.level.minecraft.cave set value {text:"洞穴",color:"white"}
data modify storage pc:lang game.level.minecraft.crimson_forest set value {text:"绯红森林",color:"white"}
data modify storage pc:lang game.level.minecraft.deepslate_cave set value {text:"深板岩洞穴",color:"red"}
data modify storage pc:lang game.level.minecraft.ender_dragon set value {text:"末影龙",color:"light_purple"}
data modify storage pc:lang game.level.minecraft.forest set value {text:"森林",color:"white"}
data modify storage pc:lang game.level.minecraft.mineshaft set value {text:"废弃矿井",color:"white"}
data modify storage pc:lang game.level.minecraft.nether set value {text:"下界",color:"white"}
data modify storage pc:lang game.level.minecraft.nether_fortress set value {text:"下界要塞",color:"white"}
data modify storage pc:lang game.level.minecraft.stronghold set value {text:"末地祭坛",color:"white"}
data modify storage pc:lang game.level.minecraft.tutorial set value {text:"教学关卡",color:"white"}
data modify storage pc:lang game.level.minecraft.zombie_village set value {text:"僵尸村庄",color:"red"}

# current language (kept in sync so the settings menu shows the right toggle)
data modify storage pc:settings lang set value "zh_cn"