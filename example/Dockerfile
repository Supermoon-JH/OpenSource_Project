FROM ubuntu:20.04
RUN apt update && apt install -y python3
WORKDIR /home/
RUN echo "print('hello world')" >> test.py
COPY ["Dockerfile", "."]
CMD ["python3", "test.py"]
