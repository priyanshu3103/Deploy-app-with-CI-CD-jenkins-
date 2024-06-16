FROM python:latest

WORKDIR /analyser_app

COPY . .

RUN pip install -r requirements.txt

CMD [ "streamlit", "run", "app.py" ]