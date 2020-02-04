pushd . > /dev/null
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../"

echo "Usage: chart {build,create} [chartname]"

if [ "$1" = "build" ]; then
    ./tools/buildchart.sh $2
fi

if [ "$1" = "create" ]; then
    ./tools/mkchart.sh $2
fi

if [ "$1" = "lint" ]; then
    helm lint ./charts/$2/
fi

#Now I would try make something fancy, but I want to get onto writing some jucy recipies

popd > /dev/null