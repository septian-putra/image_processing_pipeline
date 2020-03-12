# ML Engineer Task
#### To change the configuration, please modify `config/config.json`, which look like this:
```
{
	"valid_extension": "jpeg",
	"enforced_dimm": "270,480,3",
	"cropped_dimm": "270,270,3",
	"sample_dimm": "80,80,3",
	"train_ratio": 0.7
}
```

#### To build the docker image for this project, please execute:
```
chmod +x src/processor
sudo docker build -f Dockerfile -t image_processor:v1 .
```

#### To Run the Application, please execute:
```
sudo docker run -v $(pwd)/sample_frames:/opt/input -v $(pwd)/config:/opt/config -v $(pwd)/output_frames:/opt/output -it image_processor:v1 processor
```
The output frames will be created in `output_frames/test` and `output_frames/train`
