# ML Engineer Task

To build the docker image for this project, please execute:
```
chmod +x src/processor
sudo docker build -f Dockerfile -t image_processor:v1 .
```

To Run the Application, please execute:
```
sudo docker run -v $(pwd)/sample_frames:/opt/input -v $(pwd)/config:/opt/config -v $(pwd)/output:/opt/output -it image_processor:v1 processor
```
