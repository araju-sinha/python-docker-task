FROM python:3.8
RUN mkdir /python_app
RUN ll
WORKDIR /python_app
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache -r requirements.txt
COPY python_app/ .

CMD ["python", "/python_app/server.py" ]
