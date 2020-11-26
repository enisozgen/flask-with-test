# Flask with test


Flask Web application and Gitlab CI integration which allows user to test and deploy their code to Kubernetes.

## CI work flow

** Non Master Branch **
push non master branch -> Build new docker image

** Non Master Branch **
push master branch -> Build new docker image -> Unittest inside of Docker Container -> Push image to DockerHub -> Run upgrade or run new image in Kubernetes.

## Example come from
- https://riptutorial.com/flask/example/5831/return-a-json-response-from-flask-api
