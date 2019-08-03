docker build -t vivo/scene-classifier . && \
docker run --name scene_class -it -d -p 5000:5000 vivo/scene-classifier && \
sleep .5 && \
pytest tests/test.py && \
black . && \
docker rm -f scene_class
