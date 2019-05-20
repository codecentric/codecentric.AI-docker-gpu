FROM nvidia/cuda:10.1-runtime

WORKDIR /notebooks


RUN apt-get update && apt-get install wget unzip python3.6 python3-pip -y
RUN pip3 install --upgrade pip

RUN pip3 install fastai==1.0.52 \
 uvicorn \
 aiofiles \
 aiohttp \
 jupyter \
 imutils \
 matplotlib \
 numpy \
 opencv-python \
 Pillow \
 pandas \
 requests\
 starlette

ENTRYPOINT ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--allow-root"]
