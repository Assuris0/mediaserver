EMOJISTATUS=(✔ ❌ ℹ)
TEXTSTATUS=("\e[32mOK\e[0m" "\e[31mKO\e[0m" "\e[1m\e[34mi\e[0m")

STATUSLIST=("${TEXTSTATUS[@]}")  

checkmsg(){  
    if [ "$2" = "1" ]; then
        echo -e ${STATUSLIST[0]} $1
    else
        CHECKS="FAIL"
        echo -e ${STATUSLIST[1]} $1
    fi
}

echo -e ${STATUSLIST[2]} Initial Checks

echo

CHECKS="PASS"

[ -d "${HOME}/.helm/starters/sitewards/chart" ] && checkmsg "Boiler Plate" 1 || checkmsg "Boiler Plate" 0
[ "$(which helm | wc -l)" = "1" ] && checkmsg "Helm" 1 || checkmsg "Helm" 0
[ "$(helm plugin list | grep unittest | wc -l)" = "1" ] && checkmsg "Helm Unittests" 1 || checkmsg "Helm Unittests"

#mkdir -p ${HOME}/.local/share/helm/starters/sitewards/chart
#git clone https://github.com/sitewards/helm-chart ${HOME}/.local/share/helm/starters/sitewards/chart



[[ "$CHECKS" = "FAIL" ]] && echo "Checks Failed!" && exit || echo "All checks return OK!"


echo
pushd . > /dev/null
cd charts
helm create $1
#--starter=sitewards/chart 
popd > /dev/null
