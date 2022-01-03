FROM jupyter/scipy-notebook

RUN apt update && apt-get -y upgrade && apt -y install git-all
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8888