FROM tensorflow/tensorflow:2.3.1
WORKDIR /srv/wembedding
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
ENTRYPOINT ["python", "start_wembeddings_server.py"] 
