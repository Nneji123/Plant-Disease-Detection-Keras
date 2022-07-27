# Plant Disease Detection with Keras and FastAPI

[![Language](https://img.shields.io/badge/Python-darkblue.svg?style=flat&logo=python&logoColor=white)](https://www.python.org)
[![Framework](https://img.shields.io/badge/Keras-darkred.svg?style=flat&logo=keras&logoColor=white)](http://www.Keras.org/news.html)
[![Framework](https://img.shields.io/badge/FastAPI-darkgreen.svg?style=flat&logo=fastapi&logoColor=white)](https://lung-cancer-api.herokuapp.com/docs)
[![Framework](https://img.shields.io/badge/Tensorflow-orange.svg?style=flat&logo=tensorflow&logoColor=white)](https://share.streamlit.io/nneji123/lung-cancer-prediction/main)
![hosted](https://img.shields.io/badge/Heroku-430098?style=flat&logo=heroku&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-blue?style=flat&logo=docker&logoColor=white)
![build](https://img.shields.io/badge/build-passing-brightgreen.svg?style=flat)
![reposize](https://img.shields.io/github/repo-size/Nneji123/Plant-Disease-Detection-Keras)

**Plant Disease Detection model built with Tensorflow and deployed as an API on Heroku with FastAPI. An end-to-end Machine Learning Project carried out by Group 1 Zummit Africa AI/ML Team to detect disease(Rust, Powdery Mildew) of infected plants.**

**The App can be can be viewed [here](http://18.207.206.196:80/docs)**

## Contributors
- **NNEJI IFEANYI DANIEL**
- **RICHARD KOFI ADUKONU**


**You can check out the article on Hashnode describing in detail how this project was carried out.**

[Hashnode](https://jayralph.hashnode.dev/plant-disease-detection-with-keras-and-fastapi)

## Table of Contents
- [Plant Disease Detection](#plant-disease-detection)
  * [Problem Statement](#problem-statement)
    + [Project Outline](#project-outline)
  * [Data Preparation](#data-preparation)
    + [Rusts](#rusts)
    + [Powdery Mildew](#powdery-mildew)
  * [Model Building](#model-building)
      - [Model Diagram](#model-diagram)
      - [Model Accuracy](#model-accuracy)
      - [Model Loss](#model-loss)
  * [Preview](#preview)
    + [FastAPI Demo](#fastapi-demo)
  * [How to run the application locally](#how-to-run-the-application-locally)
  * [How to run locally with Docker Compose](#how-to-run-locally-with-docker-compose)
  * [How to run in a Gitpod Cloud Environment](#how-to-run-in-a-gitpod-cloud-environment)
  * [Deployment](#deployment)
      + [💻 Deploying the Application to Heroku](#💻-deploying-the-application-to-heroku)
      + [How to deploy the application on AWS EC2 using a Bash Script](#how-to-deploy-the-application-using-a-bash-script)



## Problem Statement
In this project, a neural network model was built using Tensorflow. The model detects if a plant is suffering from a disease(Rust or Powdery Mildew). The model was then deployed as an API using the FastAPI framework.
 
### Project Outline
1. Analyse the image data.
2. Build a Neural Network with Keras for classifying the images.
3. Design, build and deploy the model as a FastAPI Application.




## Data Preparation

**The dataset used to train the neural network contains three labels, **"Healthy", "Powdery", "Rust"** referring to plant conditions. There is a total of 1530 images divided into train, test, and validation sets. There is a total of 1530 images divided into train, test, and validation sets.**

### Rusts

Rusts are plant diseases caused by pathogenic fungi of the order Pucciniales (previously known as Uredinales). An estimated 168 rust genera and approximately 7,000 species, more than half of which belong to the genus Puccinia, are currently accepted. Rust fungi are highly specialized plant pathogens with several unique features. Taken as a group, rust fungi are diverse and affect many kinds of plants. However, each species has a very narrow range of hosts and cannot be transmitted to non-host plants. In addition, most rust fungi cannot be grown easily in pure culture. A single species of rust fungi may be able to infect two different plant hosts in different stages of its life cycle, and may produce up to five morphologically and cytologically distinct spore-producing structures viz., spermogonia, aecia, uredinia, telia, and basidia in successive stages of reproduction. Each spore type is very host specific, and can typically infect only one kind of plant. Rust fungi are obligate plant pathogens that only infect living plants. Infections begin when a spore lands on the plant surface, germinates, and invades its host. Infection is limited to plant parts such as leaves, petioles, tender shoots, stem, fruits, etc. Plants with severe rust infection may appear stunted, chlorotic (yellowed), or may display signs of infection such as rust fruiting bodies. Rust fungi grow intracellularly, and make spore-producing fruiting bodies within or, more often, on the surfaces of affected plant parts. Some rust species form perennial systemic infections that may cause plant deformities such as growth retardation, witch's broom, stem canker, galls, or hypertrophy of affected plant parts. Rusts get their name because they are most commonly observed as deposits of powdery rust-coloured or brown spores on plant surfaces. The Roman agricultural festival Robigalia (April 25) has ancient origins in combating wheat rust.

![rust](https://user-images.githubusercontent.com/101701760/181194405-9e50852c-0311-4b43-bbf4-7fc1a0327fe3.jpg)


### Powdery Mildew

Powdery mildew is a fungal disease that affects a wide range of plants. Powdery mildew diseases are caused by many different species of fungi in the order Erysiphales. Powdery mildew is one of the easier plant diseases to identify, as its symptoms are quite distinctive. Infected plants display white powdery spots on the leaves and stems. The lower leaves are the most affected, but the mildew can appear on any above-ground part of the plant. As the disease progresses, the spots get larger and denser as large numbers of asexual spores are formed, and the mildew may spread up and down the length of the plant. Powdery mildew grows well in environments with high humidity and moderate temperatures. Greenhouses provide an ideal moist, temperate environment for the spread of the disease. This causes harm to agricultural and horticultural practices where powdery mildew may thrive in a greenhouse setting. In an agricultural or horticultural setting, the pathogen can be controlled using chemical methods, bio organic methods, and genetic resistance. It is important to be aware of powdery mildew and its management as the resulting disease can significantly reduce important crop yields.

![powdery](https://user-images.githubusercontent.com/101701760/181194617-2f0e7fd2-43d1-45e4-832f-b941cf26eaad.jpg)


[Dataset Link](https://www.kaggle.com/datasets/rashikrahmanpritom/plant-disease-recognition-dataset)

## Model Building
The model was built using Keras(Tensorflow as backend) and was trained using the train images in the dataset and then evaluated using the test images in the dataset. The model was trained using the following parameters: 
- nb_train_samples = 400
- nb_validation_samples = 100
- nb_eval_samples = 60 
- epochs = 50
- batch_size = 16
- num_of_class = 3

**After training the model had an accuracy of 93.75%**

#### Model Diagram
![model](https://user-images.githubusercontent.com/101701760/181197363-3f69bc0c-d38d-4fec-9009-08c0ab050cf1.png)

#### Model Accuracy
![accuracy](https://user-images.githubusercontent.com/101701760/181198363-1820f954-c4b8-48db-9523-fbe81c4b0a0c.png)

#### Model Loss
![loss](https://user-images.githubusercontent.com/101701760/181198438-790861b9-210a-467f-93b4-69872e4aced5.png)


## Preview
### FastAPI Demo

https://user-images.githubusercontent.com/101701760/181192761-a3c4e9d7-5519-43d8-9a27-f9ca7896cce8.mp4

## How to run the application locally
**To run the application on your local system do the following:**
1. Clone the repository:
```bash
git clone https://github.com/Nneji123/Plant-Disease-Detection-Keras.git
```

2. Change the directory:
```
cd Plant-Disease-Detection-Keras
```

3. Install the requirements:
```
pip install -r requirements.txt
```

4. Download the model from google drive
```
python download.py
```
5. Run the application
```
uvicorn app:app --reload --port 8000
```
**You should be able to view the application by going to http://127.0.0.1:8000/**

## How to run locally with Docker Compose
**You can also run the application in a docker container using docker compose(if you have it installed)**

1. Clone the repository:
```bash
git clone https://github.com/Nneji123/Plant-Disease-Detection-Keras.git
```

2. Change the directory:
```
cd Plant-Disease-Detection-Keras
```

3. Download the model:
```bash
pip install gdown
python download.py
```

4. Run the docker compose command
```docker
docker compose up -d --build 
```
You should be able to view the application by going to http://localhost:8080/

## How to run in a Gitpod Cloud Environment

**Click the button below to start a new development environment:**

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/Nneji123/Plant-Disease-Detection-Keras)

## Deployment
### 💻 Deploying the Application to Heroku
**Assuming you have git and heroku cli installed just carry out the following steps:**

1. Clone the repository:
```bash
git clone https://github.com/Nneji123/Plant-Disease-Detection-Keras.git
```

2. Change the directory:
```
cd Plant-Disease-Detection-Keras
```

3. Login to Heroku

``` 
heroku login
heroku container:login
```

4. Create your application
```
heroku create your-app-name
```
Replace **your-app-name** with the name of your choosing.

5. Build the image and push to Container Registry:

```
heroku container:push web
```

6. Then release the image to your app:
 
```
heroku container:release web
```

### How to deploy the application on AWS EC2 using a Bash Script
**1. Fork this repository**

**2. Login to AWS, create a new AWS EC2 instance and make sure to allow outside traffic as shown in the screenshots below:**
![Screenshot (150)](https://user-images.githubusercontent.com/101701760/178163373-e4bb2c92-0f47-4a22-9556-dfc470fd7e8a.png)
![Screenshot (156)](https://user-images.githubusercontent.com/101701760/178163392-3c9fc8ec-e58a-420d-a6bb-2885215d8105.png)
**3. When the instance has been launched, copy the Public IP address of your instance and paste it in the 'fastapi_setup' file of your cloned repository as shown below**
![Screenshot (163)](https://user-images.githubusercontent.com/101701760/178163457-2e156379-b542-4d24-aebf-e202dd44ae2c.png)
![Screenshot (164)](https://user-images.githubusercontent.com/101701760/178163536-918818ee-563d-4b0d-a5ec-5c265a75b2b4.png)

**4. Connect to your instance and clone your forked repository, an example in my case:**
```bash
git clone https://github.com/Nneji123/Plant-Disease-Detection-Keras.git
```
**5. cd into your repository which is probably named 'Plant-Disease-Detection-Keras'. You can do that by running:**
```bash
cd Plant-Disease-Detection-Keras 
```
**6. Then run the setup.sh file to get your application up and running:**
```bash
chmod u+x setup.sh
./setup.sh
```
### You can then view the application by going to your Public IP's location, an example in my case will be:
http://3.95.202.74:80/docs

You can also watch this video for a more in depth explanation on how to deploy a FastAPI application on AWS EC2:
[![How to deploy FastAPI on AWS](https://youtube-md.vercel.app/SgSnz7kW-Ko/640/360)](https://www.youtube.com/watch?v=SgSnz7kW-Ko)
</div>






