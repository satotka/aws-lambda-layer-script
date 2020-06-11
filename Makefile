run:
	# ./publish.sh influxdb523-python37 influxdb 5.2.3 python3.7
	# ./publish.sh influxdb530-python37 influxdb 5.3.0 python3.7
	# ./publish.sh influxdb523-python38 influxdb 5.2.3 python3.8
	# ./publish.sh influxdb530-python38 influxdb 5.3.0 python3.8
	# ./publish.sh requests-python37 requests 2.22.0 python3.7
	./publish.sh requests-python38 requests 2.23.0 python3.8

clean:
	rm -rf build
