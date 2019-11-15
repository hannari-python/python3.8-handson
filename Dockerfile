FROM python:latest

RUN pip install jupyter
RUN pip install numpy
RUN pip install pandas
RUN pip install plotly-express

RUN mkdir -p /root/notebook
WORKDIR /root/notebook

CMD jupyter notebook --ip=0.0.0.0 --allow-root
