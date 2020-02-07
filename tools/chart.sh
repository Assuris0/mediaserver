show_help (){
    cat <<EOF 
Usage: $(basename $0) [command] [chart]
    Commands:
        build   -   Create the README File for the [chart]
        create  -   Create a new chart with the name of [chart]
        lint    -   Lint [chart] with chart-testing
        update  -   Update the dependencies on [chart]

    Dependencies:
        https://github.com/helm/chart-testing

        $ gofish install helm
        $ pip install yamale yamllint ruamel.yaml pystache

EOF
}

pushd . > /dev/null
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../"

CHART=charts/$2

case "$1" in 
    "build")
        python tools/mkreadme.py tools/README.MD.TEMPLATE $CHART/README.MD $CHART/Chart.yaml $CHART/values.yaml
        ;;

    "create")
        cd charts
        helm create $2
        cd ..
        ;;

    "lint")
        ct lint --charts $CHART
        ;;

    "update")
        helm dep update $CHART
        ;;
    *)
        show_help
esac

popd > /dev/null