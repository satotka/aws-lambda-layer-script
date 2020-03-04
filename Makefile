
pack:
	mkdir -p dist
	docker run --rm -it --volume `pwd`/dist:/tmp/dist --workdir /tmp/dist \
	lambci/lambda:build-python3.8 \
	bash -c "pip3 install influxdb -t /tmp/dist/python && zip -r layer.zip python/ && chown `id -u`:`id -g` ./*"
