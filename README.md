# Flask with test


Flask Web application and Gitlab CI integration which allows user to test and deploy their code to Kubernetes.

## CI work flow

### Non Master Branch
```
git push non master branch -> Build new docker image -> Unittest inside of Docker Container
```
### Master Branch
```
git push to master branch -> Build new docker image -> Unittest inside of Docker Container -> Push image to DockerHub -> Run new version of Docker image in Kubernetes
```
## Example come from
- https://riptutorial.com/flask/example/5831/return-a-json-response-from-flask-api
