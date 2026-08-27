import os
import json
import re
from nouns import colored_words, icon_words

# --- Path logic --- #
CURRENT_PATH = os.path.abspath(__file__)

def get_base_paths():
    parts = CURRENT_PATH.split(os.sep)
    try:
        idx = parts.index("VitreArena")
        vitre_arena_base = os.sep.join(parts[:idx + 1])
        datapack_base = os.path.dirname(CURRENT_PATH)  # lang/nouns/
        rp_base = os.path.join(vitre_arena_base, "resourcepacks", "Paper_Cricel RP", "assets", "sys")
        return datapack_base, rp_base
    except ValueError:
        print("警告: 找不到 VitreArena 資料夾，將使用當前目錄作為基準。")
        return os.path.dirname(CURRENT_PATH), os.path.dirname(CURRENT_PATH)

DP_BASE, RP_BASE = get_base_paths()

DATABASE_FILE = os.path.join(DP_BASE, "database.json")
OUTPUT_DIR = DP_BASE  # generated mcfunctions go into lang/nouns/

NOUNS_JSON_FILE = os.path.join(RP_BASE, "font", "nouns.json")
NOUNS_SMALLER_JSON_FILE = os.path.join(RP_BASE, "font", "nouns_smaller.json")
EN_US_JSON_FILE = os.path.join(RP_BASE, "lang", "en_us.json")

# Bitmap sizing — common vs the smaller variant used in the effect-info display
ICON_ASCENT, ICON_HEIGHT = 10, 14
ICON_SMALLER_ASCENT, ICON_SMALLER_HEIGHT = 9, 12

os.makedirs(os.path.dirname(NOUNS_JSON_FILE), exist_ok=True)
os.makedirs(os.path.dirname(EN_US_JSON_FILE), exist_ok=True)

# Unicode ranges per category — leave 0x100 slots between each for expansion
CATEGORY_START_HEX = {
    "effect":      0xE001,
    "area_effect": 0xE201,
    "custom":      0xE301,
    "entity":      0xE401,
    "intent":      0xE501,
}

# Resource pack font subfolder override — categories that share an existing folder
CATEGORY_FONT_DIR = {
    "area_effect": "effect",
}

# --- Core logic --- #

def format_description(text):
    """Process description text using nouns.py: colorize known nouns and append icon glyphs."""
    sorted_nouns = sorted(colored_words.keys(), key=len, reverse=True)
    pattern = re.compile(f"({'|'.join(re.escape(n) for n in sorted_nouns)})")

    parts = [p for p in pattern.split(text) if p]
    result = []

    if not parts:
        return '{"text":""}'

    first = parts[0]
    if first in colored_words:
        result.append(json.dumps({"color": "#c6b998", "text": ""}, ensure_ascii=False))
        result.append(json.dumps({"text": first, "color": colored_words[first]}, ensure_ascii=False))
        if first in icon_words:
            result.append(json.dumps(icon_words[first], ensure_ascii=False))
    else:
        result.append(json.dumps({"color": "#c6b998", "text": first}, ensure_ascii=False))

    for part in parts[1:]:
        if part in colored_words:
            result.append(json.dumps({"text": part, "color": colored_words[part]}, ensure_ascii=False))
            if part in icon_words:
                result.append(json.dumps(icon_words[part], ensure_ascii=False))
        else:
            result.append(json.dumps({"text": part}, ensure_ascii=False))

    return ",".join(result)


def collect_languages(db):
    """Auto-detect all language codes present anywhere in the database."""
    langs = set()
    for items in db.values():
        for item in items:
            langs.update(item.get("translations", {}).keys())
    return sorted(langs)


def get_translation(item, lang, field, fallback="en_us"):
    t = item.get("translations", {})
    if lang in t and field in t[lang]:
        return t[lang][field]
    if fallback in t and field in t[fallback]:
        return t[fallback][field]
    return ""


def generate_all():
    if not os.path.exists(DATABASE_FILE):
        print(f"錯誤: 找不到資料庫檔案 {DATABASE_FILE}")
        return

    with open(DATABASE_FILE, "r", encoding="utf-8") as f:
        db = json.load(f)

    languages = collect_languages(db)
    if not languages:
        languages = ["en_us"]

    # Per-language line buffers
    lang_lines = {lang: [f"# Generated Language File for Nouns ({lang})\n"] for lang in languages}

    # nouns.json font providers
    providers = [
        {"type": "space", "advances": {" ": 4}},
        {"type": "reference", "id": "sys:number"}
    ]

    # Translate-key → icon char (actual unicode) for en_us.json
    nouns_lang_map = {}

    for category, items in db.items():
        current_hex = CATEGORY_START_HEX.get(category, 0xE601)

        for lang in languages:
            lang_lines[lang].append(f"\n# --- {category.upper()} ---")

        for item in items:
            item_id = item.get("id")
            icon_char = chr(current_hex)
            icon_char_escaped = f"\\u{current_hex:04x}"

            # Font provider
            font_dir = CATEGORY_FONT_DIR.get(category, category)
            providers.append({
                "chars": [icon_char_escaped],
                "file": f"sys:font/{font_dir}/{item_id}.png",
                "type": "bitmap",
                "ascent": ICON_ASCENT,
                "height": ICON_HEIGHT
            })

            nouns_lang_map[f"pc:nouns.{item_id}"] = icon_char
            current_hex += 1

            # Mcfunction lines per language
            for lang in languages:
                name_raw = get_translation(item, lang, "name")
                desc_raw = get_translation(item, lang, "description")
                name_value = json.dumps({"color": "#fef1c6", "bold": True, "text": name_raw}, ensure_ascii=False)
                formatted_desc = format_description(desc_raw)
                lang_lines[lang].append(f'data modify storage pc:lang nouns.{item_id}.name set value {name_value}')
                lang_lines[lang].append(f'data modify storage pc:lang nouns.{item_id}.desc set value [{formatted_desc}]')

    # Write mcfunction files
    for lang, lines in lang_lines.items():
        out_path = os.path.join(OUTPUT_DIR, f"{lang}.mcfunction")
        with open(out_path, "w", encoding="utf-8") as f:
            f.write("\n".join(lines))
        print(f"生成 {lang}.mcfunction")

    # Write nouns.json (combines former effect.json + intent.json)
    json_content = json.dumps({"providers": providers}, indent=4, ensure_ascii=False)
    json_content = json_content.replace("\\\\u", "\\u")
    with open(NOUNS_JSON_FILE, "w", encoding="utf-8") as f:
        f.write(json_content)
    print("生成 nouns.json")

    # Write nouns_smaller.json — same glyphs, smaller bitmaps (for the effect-info display)
    providers_smaller = []
    for p in providers:
        if p.get("type") == "bitmap":
            p = {**p, "ascent": ICON_SMALLER_ASCENT, "height": ICON_SMALLER_HEIGHT}
        providers_smaller.append(p)
    json_content = json.dumps({"providers": providers_smaller}, indent=4, ensure_ascii=False)
    json_content = json_content.replace("\\\\u", "\\u")
    with open(NOUNS_SMALLER_JSON_FILE, "w", encoding="utf-8") as f:
        f.write(json_content)
    print("生成 nouns_smaller.json")

    # Update resource pack en_us.json
    if os.path.exists(EN_US_JSON_FILE):
        with open(EN_US_JSON_FILE, "r", encoding="utf-8") as f:
            existing = json.load(f)
    else:
        existing = {}

    # Replace old pc:intent / pc:effect keys with pc:nouns
    existing = {k: v for k, v in existing.items()
                if not k.startswith("pc:intent.") and not k.startswith("pc:effect.") and not k.startswith("pc:nouns.")}
    existing.update(nouns_lang_map)

    with open(EN_US_JSON_FILE, "w", encoding="utf-8") as f:
        json.dump(existing, f, indent=4, ensure_ascii=False)
    print("更新 en_us.json")


if __name__ == "__main__":
    generate_all()
    print("\n[全部任務完成]")
