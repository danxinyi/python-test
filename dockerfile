FROM hk.ayiblog.com:5000/python:3.10.11-slim-buster
ENV LANG en_US.UTF-8
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone
COPY . /opt/pythontest
WORKDIR /opt/pythontest
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
EXPOSE  80
CMD ["python3","main.py"]
