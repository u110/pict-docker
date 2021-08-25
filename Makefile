build:
	docker build . -t pict-docker

help:
	docker run --rm -it pict-docker pict

inputs:=samples.txt
run:
	docker run --rm -it -v $(shell pwd)/$(inputs):/workspace/inputs.txt pict-docker pict /workspace/inputs.txt

sample:
	$(MAKE) run inputs=samples.txt


