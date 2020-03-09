# 
# Require: docker installed.
# Require: aws config for publishing lambda layer
# 
# 1. in container, pip install python liblary and zip,
# 2. publish to aws layer
#
# Usage: 
#  ex ```./publish.sh requests-python37 requests 2.22.0 python3.7```

layername=$1 # requests-python37
lib=$2       # requests
ver=$3       # 2.23.0
env=$4       # python3.7

zip=$lib-$ver-$env.zip # requests-2.23.0-python3.8.zip
echo packing: $zip

# Prepare
mkdir -p build
rm -rf build/* # Clean up

# pip and zip in docker.
docker run --rm -it  \
    --volume `pwd`/build:/tmp/build  \
    --workdir /tmp/build \
    lambci/lambda:build-$env \
    bash -c "pip3 install $lib==$ver -t /tmp/build/python && zip -qr $zip python/ && rm -rf /tmp/build/python && chown -R `id -u`:`id -g` ./*"

echo packed : build/$zip

aws lambda publish-layer-version \
    --layer-name $layername \
    --zip-file fileb://`pwd`/build/$zip \
    --description $zip \
    --compatible-runtimes $env
