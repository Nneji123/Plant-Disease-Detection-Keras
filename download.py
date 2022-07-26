import gdown

def url_to_id(url):
    x = url.split("/")
    return x[5]

id = url_to_id('https://drive.google.com/file/d/1-0D3D2zxsjYTJsmP2HzJBYX46ixsJFcO/view?usp=sharing')

url = 'https://drive.google.com/uc?id='+id
output = 'plant_classifier.h5'
gdown.download(url, output, quiet=False)