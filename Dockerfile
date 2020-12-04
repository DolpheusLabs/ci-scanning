FROM python:3.9.0
WORKDIR /usr/src
COPY main.py .
COPY requirements.txt .
RUN mkdir /usr/src/app \
  && cd /usr/src/
RUN python -m pip install -r requirements.txt
CMD ["python", "main.py"]
