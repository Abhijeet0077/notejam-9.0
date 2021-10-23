FROM python:2.7.18

LABEL AUTHOR="MOHIT BHATT"

WORKDIR /app

COPY requirements.txt .

RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org -r requirements.txt

COPY . .  

RUN chmod +x commands.sh

EXPOSE 8000

CMD ["./commands.sh"]

