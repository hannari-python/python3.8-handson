FROM python:latest

RUN pip install jupyter
RUN mkdir -p /root/notebook
WORKDIR /root/notebook

CMD jupyter notebook --ip=0.0.0.0 --allow-root
