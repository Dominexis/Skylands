import os
import json
from parse_lore import parse_lore


BASE_DIR = os.path.dirname(os.path.abspath(__file__))
DATABASE_FILE = os.path.join(BASE_DIR, "database.json")
INFO_FILE = os.path.join(BASE_DIR, "info.mcfunction")
ICON_FILE = os.path.join(BASE_DIR, "icon.mcfunction")


def load_descriptions():
    # 讀取並處理 database.json
    with open(DATABASE_FILE, "r", encoding="utf-8") as f:
        descriptions = json.load(f)
        for category, items in descriptions.items():
            for i in range(len(items)):
                items[i]["description"] = parse_lore(items[i])                
    return descriptions


def write_info_file(descriptions):
    # 輸出 info.mcfunction
    with open(INFO_FILE, "w", encoding="utf-8") as f:
        def write_section(title, key, template):
            f.write(f"\n# {title}\n")
            for i in descriptions[key]:
                f.write(template.format(**i) + "\n")

        write_section("Effects", "effect",
            'execute if data storage pc:temp info.effect.{id} run '
            'data modify storage pc:temp info.display append value '
            '["",{{text:"[",color:"#fef1c6",bold:true}},'
            '{{text:"{icon}",font:"pc:effect"}},'
            '{{text:"{name}] ",bold:true,color:"#fef1c6"}},{description}]'
        )

        write_section("Powers", "power",
            'execute if data storage pc:temp info.effect.{id} run '
            'data modify storage pc:temp info.display append value '
            '["",{{text:"[",color:"#fef1c6",bold:true}},'
            '{{text:"{icon}",font:"pc:effect"}},'
            '{{text:"{name}] ",bold:true,color:"#fef1c6"}},{description}]'
        )

        write_section("Area Effects", "area_effect",
            'execute if data storage pc:temp info.effect.{id} run '
            'data modify storage pc:temp info.display append value '
            '["",{{text:"[",color:"#fef1c6",bold:true}},'
            '{{text:"{icon}",font:"pc:effect"}},'
            '{{text:"{name}] ",bold:true,color:"#fef1c6"}},{description}]'
        )

        write_section("Item Attributes", "item_passive",
            'execute if data storage pc:temp info.effect.{id} run '
            'data modify storage pc:temp info.display append value '
            '["",{{text:"[{name}] ",bold:true,color:"#fef1c6"}},{description}]'
        )


def write_icon_file(descriptions):
    # 輸出 icon.mcfunction
    with open(ICON_FILE, "w", encoding="utf-8") as f:
        f.write("\ndata modify storage pc:temp hover.effect set from entity @s data.effect\n")

        def write_section(title, key, template):
            f.write(f"\n# {title}\n")
            for i in descriptions[key]:
                f.write(template.format(**i) + "\n")

        write_section("Effects", "effect",
            'execute if data entity @s data.effect.{id} run '
            'data modify storage pc:temp hover.display.effect append value '
            '[{{text:"{icon}"}},{{nbt:"hover.effect.{id}","storage":"pc:temp","shadow_color":2082677539}}]'
        )

        write_section("Powers", "power",
            'execute if data entity @s data.effect.{id} run '
            'data modify storage pc:temp hover.display.effect append value '
            '[{{text:"{icon}"}}]'
        )

        write_section("Area Effects", "area_effect",
            'execute if data entity @s data.effect.{id} run '
            'data modify storage pc:temp hover.display.effect append value '
            '[{{text:"{icon}"}},{{nbt:"hover.effect.{id}","storage":"pc:temp","shadow_color":2082677539}}]'
        )


def main():
    descriptions = load_descriptions()
    write_info_file(descriptions)
    write_icon_file(descriptions)
    print(":) Done.")


if __name__ == "__main__":
    main()