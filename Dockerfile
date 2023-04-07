FROM python:3.10.11-slim

RUN ln -fs /usr/share/zoneinfo/Asia/Phnom_Penh /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata

COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

CMD python run.py