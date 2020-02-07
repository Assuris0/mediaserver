show_help (){
    cat <<EOF 
Usage: $(basename $0) [command] [chart]
    Commands:
        build   -   Create the README File for the [chart]
        create  -   Create a new chart with the name of [chart]
        lint    -   Lint [chart] with chart-testing
        update  -   Update the dependencies on [chart]
        prepush -   Updates readme, updates dependencies and lints chart (The pre-push package!)

    Dependencies:
        https://github.com/helm/chart-testing

        $ gofish install helm
        $ pip install yamale yamllint ruamel.yaml pystache

EOF
}

cmd_build(){
    python tools/mkreadme.py tools/README.MD.TEMPLATE $CHART/README.MD $CHART/Chart.yaml $CHART/values.yaml
}

cmd_create(){
    cd charts
    helm create $2
    cd ..
}

cmd_lint(){
    ct lint --charts $CHART --config .ci/ct-config.yaml
}

cmd_update(){
    helm dep update $CHART
}

pushd . > /dev/null
cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../"

CHART=charts/$2

case "$1" in 
    "build")
        cmd_build
        ;;

    "create")
        cmd_create
        ;;

    "lint")
        cmd_lint
        ;;

    "update")
        cmd_update
        ;;
    "prepush")
        cmd_build
        cmd_update
        cmd_lint
        ;;
    *)
        show_help
esac

popd > /dev/null