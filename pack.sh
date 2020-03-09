#TODO: call with param(like python version, package etc,)
lib=influxdb
tag=build-python3.6
zip=$lib-$tag.zip

mkdir -p build
rm -rf build/* ## Clean up

mkdir -p dist

# pip and zip in docker.
docker run --rm -it  \
    --volume `pwd`/build:/tmp/build  \
    --workdir /tmp/build \
    lambci/lambda:$tag \
    bash -c "pip3 install $lib -t /tmp/build/python && zip -r $zip python/ && chown -R `id -u`:`id -g` ./* && rm -rf /tmp/build/python"

# Distribution
cp build/$zip dist/
