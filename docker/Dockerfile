FROM python:3.10-alpine3.17
WORKDIR /usr/src/app
COPY src/requirements.txt ./
RUN apk add libpq-dev
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
RUN python3 -m unittest
CMD [ "python", "./src/main.py" ]
