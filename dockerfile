FROM python:3.10.11-slim-buster
ENV LANG en_US.UTF-8
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone
COPY . /opt/pythontest
WORKDIR /opt/pythontest
RUN pip install -r requirements.txt
EXPOSE  80
CMD ["python3","main.py"]