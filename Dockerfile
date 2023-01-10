# Use official lightweight python Image.
# https://hub.docker.com/_python

# Copy local code to the container image.
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

# install  - requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8001

CMD python app.py