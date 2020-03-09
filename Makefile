run:
	# ./publish.sh influxdb-python36 influxdb 5.2.3 python3.6
	# ./publish.sh requests-python38 requests 2.23.0 python3.8
	./publish.sh requests-python37 requests 2.22.0 python3.7

clean:
	rm -rf build
