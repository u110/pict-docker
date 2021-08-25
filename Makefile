build:
	docker build . -t pict-docker

help: build run

run:
	docker run --rm -it pict-docker pict

sample:
	docker run --rm -it -v $(PWD):/workspace pict-docker pict /workspace/samples.txt
