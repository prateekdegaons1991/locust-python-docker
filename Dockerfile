FROM python:3.10.1-bullseye


# Install locust
RUN pip install locust

ADD locustfile.py /config/locustfile.py
ADD runLocustfile.sh /usr/local/bin/runLocustfile.sh

RUN chmod +x /usr/local/bin/runLocustfile.sh

ENV LOCUST_FILE /config/locustfile.py

EXPOSE 8089

ENTRYPOINT ["/usr/local/bin/runLocustfile.sh"]