# Plant-Disease-Detection
Plant Disease Detection model built with Pytorch and deployed on aws with FastAPI

# Credit Card Fraud Detection App built with Streamlit, FastAPI and Docker

[![Language](https://img.shields.io/badge/Python-darkblue.svg?style=flat&logo=python&logoColor=white)](https://www.python.org)
[![Framework](https://img.shields.io/badge/sklearn-darkorange.svg?style=flat&logo=scikit-learn&logoColor=white)](http://www.pytorch.org/news.html)
[![Framework](https://img.shields.io/badge/FastAPI-darkgreen.svg?style=flat&logo=fastapi&logoColor=white)](https://lung-cancer-api.herokuapp.com/docs)
[![Framework](https://img.shields.io/badge/Streamlit-red.svg?style=flat&logo=streamlit&logoColor=white)](https://share.streamlit.io/nneji123/lung-cancer-prediction/main)
![hosted](https://img.shields.io/badge/Heroku-430098?style=flat&logo=heroku&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-blue?style=flat&logo=docker&logoColor=white)
![build](https://img.shields.io/badge/build-passing-brightgreen.svg?style=flat)
![reposize](https://img.shields.io/github/repo-size/Nneji123/Credit-Card-Fraud-Detection)

An end-to-end Machine Learning Project carried out by Group 3 Zummit Africa AI/ML Team to detect fraudulent credit card transactions. Built with FastAPI, Streamlit and Docker.

## Contributors
- **NNEJI IFEANYI DANIEL**
- **IFEZUE TOONNAEMEKA HILARY**
- **SOMTOCHUKWU OGUCHIENTI**
- **KACHUKWU OKOH**

You can check out the article on Medium describing in detail how this project was carried out.

https://medium.com/mlearning-ai/credit-card-fraud-detection-2527ca04c3de

## Problem Statement
In this project, I worked with data from the Survey of Consumer Finances (SCF). The SCF is a survey sponsored by the US Federal Reserve. It tracks financial, demographic, and opinion information about families in the United States. The survey is conducted every three years, and we'll work with an extract of the results from 2019.
 
**This Dash App utilizes a Machine Learning model built with KMeans to segment customers based on various features**


The App can be can be viewed [here](https://custsegapp.herokuapp.com)

## Data Preparation

*From the US Federal Reserve website:*

The Survey of Consumer Finances (SCF) is normally a triennial cross-sectional survey of U.S. families. The survey data include information on families’ balance sheets, pensions, income, and demographic characteristics. Information is also included from related surveys of pension providers and the earlier such surveys conducted by the Federal Reserve Board. No other study for the country collects comparable information. Data from the SCF are widely used, from analysis at the Federal Reserve and other branches of government to scholarly work at the major economic research centers.

[Dataset Link](https://www.federalreserve.gov/econres/scfindex.htm)

## Project Outline
1. Create an.
2. Build a k-means clustering model.
3. Conduct feature selection for clustering based on variance.
4. Reduce high-dimensional data using principal component analysis (PCA).
5. Design, build and deploy a Dash web application.


## Preview

### FastAPI Demo

![ezgif com-gif-maker](https://user-images.githubusercontent.com/101701760/179729434-4c935131-90b4-486b-a73d-f3a220efa831.gif)

## 💻 Deploying the Application to Heroku
Assuming you have git and heroku cli installed just carry out the following steps:

1. Clone the repository

```
git clone https://github.com/Nneji123/Customer-Segmentation-Dash-Application.git
```

2. Change the working directory

```
cd Customer-Segmentation-Dash-Application
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




