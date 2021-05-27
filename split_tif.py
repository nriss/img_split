from PIL import Image, ImageSequence


import os

files = [f for f in os.listdir(".") if os.path.isfile(f)]
for f in files:
    if ".tif" in f:
        file_name = f.replace(".tif", "")

        im = Image.open(file_name + ".tif")

        i = 0
        for _ in ImageSequence.Iterator(im):
            _.save("result/" + file_name + str(i) + ".tif")
            i = i + 1