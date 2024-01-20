# Minimal (simple) Docker Implementation Jupyternotebook
## Package
- Based on ubuntu 22.04 image with python 3.10.12
- Jupyterlab

## How to Build Docker Images

```
docker build . -t jupter-lab:0.2-minimal
```

## How to Run
```
docker run --name "lokal-dev" -v $(pwd)/data:/srv -e SHELL='/bin/bash' -e JUPYTER_TOKEN='machinelearning' -d -p 8888:8888 jupyter-lab:0.2-minmal
```
run in browser:
http://localhost:8888 and enter 'machinelearning' for login token

### Default
Default user is dbcooper and default root password si toor

## License
GPL V3 https://www.gnu.org/licenses/gpl-3.0.en.html
