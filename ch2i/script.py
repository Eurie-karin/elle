#!/usr/bin/env python3

import random
from pathlib import Path

file_counter = 1

extension = ["txt", "jpg", "png", "py", "sh", "md"]

while file_counter < 101:
    file_path = Path(f"/home/jade/work/elle/ch2i/junk/{file_counter}/file{file_counter}.{extension[random.randint(0, 5)]}")
    file_path.parent.mkdir(parents=True, exist_ok=True)

    with open(file_path, "w") as f:
        f.write("decoy? or something more...")
        file_counter += 1



