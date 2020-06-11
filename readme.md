# Make AWS Lambda layer

## Subject

- pip and zip for Layer
- publish layer to AWS

## Usage

1. ```aws configure``` need to lambda layer role.
2. Execute ```publish.sh``` with layer-name, library, lib-version, language

## Example

```bash
./publish.sh influxdb523-python37 influxdb 5.2.3 python3.7
./publish.sh influxdb530-python37 influxdb 5.3.0 python3.7
./publish.sh influxdb523-python38 influxdb 5.2.3 python3.8
./publish.sh influxdb530-python38 influxdb 5.3.0 python3.8
./publish.sh requests-python37 requests 2.22.0 python3.7
./publish.sh requests-python38 requests 2.23.0 python3.8
```

## Library Infomation

- InfluxDB client :
  - See: [https://pypi.org/project/influxdb/](https://pypi.org/project/influxdb/)
- InfluxDB 2.0 Python client library
  - See: [https://pypi.org/project/influxdb-client/](https://pypi.org/project/influxdb-client/)
- requests
  - See: [https://pypi.org/project/requests/](https://pypi.org/project/requests/)
