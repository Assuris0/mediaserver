pushd . > /dev/null
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../"

echo "Usage: chart {build,create,lint} [chartname]"

CHART=charts/$2

# dependencies
# gh: helm/helm
# gh: helm/chart-tools
# $ pip install yamale yamllint ruamel.yaml pystache




if [ "$1" = "build" ]; then
    python tools/mkreadme.py tools/README.MD.TEMPLATE $CHART/README.MD $CHART/Chart.yaml $CHART/values.yaml
fi

if [ "$1" = "create" ]; then
    cd charts
    helm create $2
    cd ..
fi

if [ "$1" = "lint" ]; then
    ct lint --charts $CHART --debug
fi

#Now I would try make something fancy, but I want to get onto writing some jucy recipies

popd > /dev/null