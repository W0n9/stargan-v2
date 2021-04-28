from PIL import Image
import glob

for name in glob.glob('*.tif'):
    im = Image.open(name)
    im = im.convert('RGB')
    name = str(name).rstrip(".tif")
    im.save(name + '.jpg', 'JPEG')

for name in glob.glob('*.tiff'):
    im = Image.open(name)
    im = im.convert('RGB')
    name = str(name).rstrip(".tiff")
    im.save(name + '.jpg', 'JPEG')

for name in glob.glob('*.bmp'):
    im = Image.open(name)
    im = im.convert('RGB')
    name = str(name).rstrip(".bmp")
    im.save(name + '.jpg', 'JPEG')

print("Conversion from tif/tiff to jpg completed!")