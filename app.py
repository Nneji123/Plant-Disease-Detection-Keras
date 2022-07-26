# Library imports
import numpy as np
from fastapi import FastAPI, File, UploadFile
from fastapi.responses import PlainTextResponse
import numpy as np
import io
from PIL import Image
import cv2
from keras.models import load_model
import warnings
warnings.filterwarnings("ignore")
import os
import gdown

def url_to_id(url):
    x = url.split("/")
    return x[5]

if os.path.exists("plant_classifier.h5") == False:
    id = url_to_id('https://drive.google.com/file/d/1-0D3D2zxsjYTJsmP2HzJBYX46ixsJFcO/view?usp=sharing')
    url = 'https://drive.google.com/uc?id='+id
    output = 'plant_classifier.h5'
    gdown.download(url, output, quiet=False)
else:
    pass

model = load_model('plant_classifier.h5')

# Name of Classes
target_names = ['Healthy', 'Powdery', 'Rust']

app = FastAPI(
    title="Plant Disease Detection API",
    description="""An API that utilises a Deep Learning model built with Keras(Tensorflow) to detect if a plant is healthy or suffering from Rust and Powder formation.""",
    version="0.0.1",
    debug=True,
)


@app.get("/", response_class=PlainTextResponse)
async def running():
    note = """
Plant Disease Detection API 🙌🏻
Note: add "/docs" to the URL to get the Swagger UI Docs or "/redoc"
  """
    return note


favicon_path = "favicon.png"


@app.post("/predict")
async def root(file: UploadFile = File(...)):
    """
    The root function returns the prediction of an image using a pretrained model.
    Parameters:
        file (UploadFile): The image to be predicted. 
    Returns:
        result (str): The prediction of the image as a string.  
    Args:
        file:UploadFile=File(...): Specify that the file is uploaded as a multipart/form-data request
    Returns:
        The prediction of the model in json format
    """

    contents = io.BytesIO(await file.read())
    file_bytes = np.asarray(bytearray(contents.read()), dtype=np.uint8)
    img = cv2.imdecode(file_bytes, 1)
    img = cv2.resize(img, (80, 80))
    img.shape = (1, 80, 80, 3)
    image = model.predict(img)
    result = target_names[np.argmax(image)]
    return (str("Result from prediction: " +result + " plant."))
