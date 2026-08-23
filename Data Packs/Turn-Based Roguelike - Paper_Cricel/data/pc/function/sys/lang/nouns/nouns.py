
# Term -> color, used by main.py's format_description() to colorize nouns inside
# descriptions. The matcher is longest-first, so longer terms (e.g. "Max HP" /
# "最大血量") take priority over their substrings ("HP" / "血量").
#
# Both English and Chinese terms live in the SAME dict — they never overlap, and
# each language's descriptions only contain its own words, so a single dict serves
# all languages.
#
# ⚠ Chinese homograph note: bare "攻擊" (Attack) is intentionally NOT listed, because
# it also appears as plain text inside "攻擊傷害" / "被攻擊方塊" / "下次攻擊" in several
# descriptions (Chinese has no word boundaries to tell them apart). The longer term
# "攻擊意圖" (Attack Intent) is safe and IS listed. Consequence: the word 攻擊 in the
# attack-intent descriptions is no longer auto-colored (their name + other terms still
# are). If you want it back, reword those 4 plain descriptions to drop the bare 攻擊.

colored_words = {
    # --- System Nouns (English) ---
    "HP": "#f1de61",
    "Max HP": "#f1de61",
    "Energy": "#f1de61",
    "Max Energy": "#f1de61",
    "Durability": "#f1de61",
    "Max Durability": "#f1de61",
    "Money": "#f1de61",

    "Move Item": "#d983f4",
    "Skill Item": "#d983f4",
    "Repair Item": "#d983f4",
    "Repair Mode": "#d983f4",
    "Move Intent": "#d983f4",
    "Attack Intent": "#d983f4",
    "Block": "#d983f4",
    "Attack": "#d983f4",
    "Buff": "#d983f4",
    "Debuff": "#d983f4",
    "Heal": "#d983f4",
    "Move": "#d983f4",
    "Summon": "#d983f4",

    "Ground": "#d983f4",
    "Hole": "#d983f4",
    "Wall": "#d983f4",

    # --- Feature Nouns (English) ---
    "Shield": "#7abff1",
    "Anvil":  "#7abff1",
    "Interrupted":  "#7abff1",
    "Disable": "#ff6065",
    "disable": "#ff6065",

    # --- Effect Nouns (English) ---
    "Vulnerable": "#7abff1",
    "Critical Hit": "#7abff1",
    "Robust": "#7abff1",
    "Weakness": "#7abff1",
    "No Heal": "#7abff1",
    "Regeneration": "#7abff1",
    "Strength": "#7abff1",
    "Strength Down": "#7abff1",
    "Vigor": "#7abff1",
    "Misery": "#7abff1",
    "Poison": "#7abff1",
    "DragonMark": "#7abff1",
    "Repel": "#7abff1",
    "Phantom": "#7abff1",

    "Fire Area": "#7abff1",
    "Rail Area": "#7abff1",
    "Stone Form": "#7abff1",
    "Cobweb Area": "#7abff1",

    # --- System Nouns (中文) ---
    "血量": "#f1de61",
    "最大血量": "#f1de61",
    "能量": "#f1de61",
    "最大能量": "#f1de61",
    "耐久度": "#f1de61",
    "最大耐久度": "#f1de61",
    "金錢": "#f1de61",

    "移動物品": "#d983f4",
    "技能物品": "#d983f4",
    "修復物品": "#d983f4",
    "修復模式": "#d983f4",
    "移動意圖": "#d983f4",
    "攻擊意圖": "#d983f4",
    " 格擋 ": "#d983f4",
    " 攻擊 ": "#d983f4",
    " 增益 ": "#d983f4",
    " 減益 ": "#d983f4",
    " 治療 ": "#d983f4",
    " 移動 ": "#d983f4",
    " 召喚 ": "#d983f4",

    "空洞": "#d983f4",

    # --- Feature Nouns (中文) ---
    "護盾": "#7abff1",
    "鐵砧": "#7abff1",
    "打斷": "#7abff1",
    "禁用": "#ff6065",

    # --- Effect Nouns (中文) ---
    "易傷": "#7abff1",
    "爆擊": "#7abff1",
    "強健": "#7abff1",
    "虛弱": "#7abff1",
    "再生": "#7abff1",
    "力量下降": "#7abff1",
    "力量": "#7abff1",
    "活力": "#7abff1",
    "苦痛": "#7abff1",
    "龍之印記": "#7abff1",
    "擊退": "#7abff1",
    "幻影": "#7abff1",

    "火焰區域": "#7abff1",
    "鐵軌區域": "#7abff1",
    "蜘蛛網區域": "#7abff1",

    # --- System Nouns (简体中文) ---
    # (血量/能量/耐久度 等與繁體相同，dict 共用，此處僅補差異字)
    "金钱": "#f1de61",

    "移动物品": "#d983f4",
    "修复物品": "#d983f4",
    "修复模式": "#d983f4",
    "移动意图": "#d983f4",
    "攻击意图": "#d983f4",
    " 格挡 ": "#d983f4",
    " 攻击 ": "#d983f4",
    " 减益 ": "#d983f4",
    " 治疗 ": "#d983f4",
    " 移动 ": "#d983f4",
    " 召唤 ": "#d983f4",

    # --- Feature Nouns (简体中文) ---
    "护盾": "#7abff1",
    "铁砧": "#7abff1",
    "打断": "#7abff1",

    # --- Effect Nouns (简体中文) ---
    "易伤": "#7abff1",
    "爆击": "#7abff1",
    "强健": "#7abff1",
    "虚弱": "#7abff1",
    "龙之印记": "#7abff1",
    "击退": "#7abff1",

    "火焰区域": "#7abff1",
    "铁轨区域": "#7abff1",
    "蜘蛛网区域": "#7abff1",

    # --- General ---
    "● ": "#72BD7A",
}

icon_words = {
    # --- English ---
    "Energy": {"font":"sys:icon","text": "0", "color": "white"},
    "Max Energy": {"font":"sys:icon","text": "0", "color": "white"},
    "Durability": {"font":"sys:icon", "text":"1", "color": "white"},
    "Max Durability": {"font":"sys:icon", "text":"1", "color": "white"},
    "HP": {"font":"sys:icon","text":"2", "color": "white"},
    "Max HP": {"font":"sys:icon","text":"2", "color": "white"},
    "Money": {"font":"sys:icon","text":"3", "color": "white"},

    # --- 中文 ---
    "能量": {"font":"sys:icon","text": "0", "color": "white"},
    "最大能量": {"font":"sys:icon","text": "0", "color": "white"},
    "耐久度": {"font":"sys:icon", "text":"1", "color": "white"},
    "最大耐久度": {"font":"sys:icon", "text":"1", "color": "white"},
    "血量": {"font":"sys:icon","text":"2", "color": "white"},
    "最大血量": {"font":"sys:icon","text":"2", "color": "white"},
    "金錢": {"font":"sys:icon","text":"3", "color": "white"},

    # --- 简体中文 ---
    "金钱": {"font":"sys:icon","text":"3", "color": "white"},
}
