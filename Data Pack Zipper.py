import sys
if not (
    (sys.version_info[0] == 3 and sys.version_info[1] >= 12)
    or
    (sys.version_info[0] > 3)
):
    print("ERROR: This script requires Python 3.12 or newer!")
    input()
    exit()
    
from pathlib import Path
import shutil
import sys
import os

PROGRAM_PATH = Path(__file__).parent
DATA_PACKS_PATH = PROGRAM_PATH / "Data Packs"
ZIPPED_DATA_PACKS_PATH = PROGRAM_PATH / "Zipped Data Packs"



def zip_data_packs():
    if not DATA_PACKS_PATH.exists():
        print("ERROR: The folder 'Data Packs' doesn't exist!")
        return
    
    if ZIPPED_DATA_PACKS_PATH.exists():
        shutil.rmtree(ZIPPED_DATA_PACKS_PATH)
    ZIPPED_DATA_PACKS_PATH.mkdir(exist_ok=True, parents=True)
    
    for data_pack_path in DATA_PACKS_PATH.iterdir():
        if not data_pack_path.is_dir():
            continue

        data_pack = data_pack_path.name
        print(f"Zipping {data_pack}")
        shutil.make_archive((ZIPPED_DATA_PACKS_PATH / data_pack).as_posix(), "zip", data_pack_path)

    input("Data packs zipped")



if __name__ == "__main__":
    zip_data_packs()