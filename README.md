<h1 align="center">
    Bank Churn Analysis
</h1>

<br>

<div align="center">
    <img src="https://img.shields.io/badge/Python-3.11-blue">
    <img src="https://img.shields.io/badge/License-MIT-green">
    <a href="https://mybinder.org/v2/gh/jsquared-2/bank-churn-analysis/HEAD" target="_blank"><img src="https://img.shields.io/badge/Launch-JupyterLab-F5A252.svg?logo=data:image/png;base64,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"></a>
</div>

## Introduction
This notebook focuses on performing exploratory data analysis, data pre-processing, and machine learning on bank churn data in order to produce a model that accurately predicts whether a customer will leave a bank. The data source for this notebook is <a href="https://www.kaggle.com/datasets/shantanudhakadd/bank-customer-churn-prediction/data?select=Churn_Modelling.csv" target="_blank">Bank Customer Churn Prediction</a> on Kaggle.

## Table of Contents
1. [Getting Started](#getting-started)
   1. [Download Repository](#download-repository)
   2. [Setup Environment](#setup-environment)
2. [Viewing Notebook](#viewing-notebook)
   1. [IDE](#ide)
   2. [Local JupyterLab](#local-jupyterlab)
   3. [Dockerized JupyterLab](#dockerized-jupyterlab)
3. [License](#license)

## Getting Started
### Download Repository
In order to access the contents of the repository locally, you can clone the repository with the following command:

```bash
git clone https://github.com/jsquared-2/bank-churn-analysis.git
```

From there `cd` into the directory:
```bash
cd bank-churn-analysis
```

<div align="right"><a href="#table-of-contents">↑ Back to Top ↑</a></div>

### Setup Environment
As this repository has a lot of requirements, it is a good idea to create a virtual environment before installing the requirements. The process for creating and activating virtual environments differs by operating system. The first command creates the environment, and the second activates it.

#### Windows (Powershell)
```powershell
python -m venv env
```

```powershell
env/Scripts/Activate.ps1
```

#### Windows (Git Bash)
```bash
python -m venv env
```

```bash
source /env/Scripts/activate
```

#### MacOS/Linux
```bash
python3 -m venv env
```

```bash
source /env/Scripts/activate
```

Once the environment is activated, the required packages can be installed using the following command:

#### Windows (Powershell/Git Bash)
```bash
python -m pip install -r requirements.txt
```

#### MacOS/Linux
```bash
python3 -m pip install -r requirements.txt
```

<div align="right"><a href="#table-of-contents">↑ Back to Top ↑</a></div>

## Viewing Notebook
### IDE
The contents of the notebook can be viewed in any IDE that supports the viewing of `.ipynb` files. For example, [Microsoft's VS Code](https://code.visualstudio.com/) has the [Jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter) extension, which provides basic support for viewing, editing, and running notebooks.

<div align="right"><a href="#table-of-contents">↑ Back to Top ↑</a></div>

### Local JupyterLab
Alternatively, the notebook can be viewed in a local JupyterLab session. The project requirements do not include the dependencies for JuyterLab, so they will need to be installed within the virtual environment.

#### Windows (Powershell/Git Bash)
```bash
python -m pip install jupyter -U
python -m pip install juypyterlab
```

#### MacOS/Linux
```bash
python3 -m pip install jupyter -U
python3 -m pip install juypyterlab
```

Once JupyterLab is installed, run the following command to view the notebook:

#### Windows (Powershell/Git Bash)
```bash
python jupyter lab --notebook-dir notebooks
```

#### MacOS/Linux
```bash
python3 jupyter lab --notebook-dir notebooks
```

Alternatively, the following command will open the entire repository within JupyterLab:

#### Windows (Powershell/Git Bash)
```bash
python jupyter lab
```

#### MacOS/Linux
```bash
python3 jupyter lab
```

The lab environment should automatically open in a new tab/window.

<div align="right"><a href="#table-of-contents">↑ Back to Top ↑</a></div>

### Dockerized JupyterLab
If [Docker Desktop](https://www.docker.com/products/docker-desktop/) is installed on your machine, it can be used to spin up a Dockerized instance of the notebook server.

The following command uses the `docker-compose.yml` file to build the image and start the container in a detached state, keeping the command line clear:

```bash
docker-compose up -d --build
```

In order to get the URL needed to access the lab environment, run the following command to search the logs of the container:

```bash
docker logs notebook-server 2>&1 | grep -m 1 "http://127.0.0.1"
```

The output should be similar to what is below:

```md
[I 20XX-XX-XX HH:MM:SS.SSS ServerApp]     http://127.0.0.1:8888/lab?token=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

`Ctrl` + Click or `Cmd` + Click on the link to open the link in a new tab/window. Alternatively, copying and pasting the link also works.

The token generated is unique for each session, and is the authenication method for accessing the server.

When you are done with the container, use the following command to shutdown services and remove containers:

```bash
docker-compose down
```

If you want to reboot the service, use the following command to skip the build step and start from the last image built:

```bash
docker-compose up -d
```

<div align="right"><a href="#table-of-contents">↑ Back to Top ↑</a></div>

## License
MIT