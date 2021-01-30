FROM python:3.8
RUN mkdir /python_app
WORKDIR /python_app
COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install --no-cache -r requirements.txt
COPY server.py /python_app
EXPOSE 5000
CMD ["python", "server.py" ]

