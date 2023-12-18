
FROM python:3.11-alpine

COPY . .

#RUN apt update && apt install python3 python3.pip
RUN pip install -r requirements.txt

ENV FLASK_APP=app.py
EXPOSE 8080 

CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]