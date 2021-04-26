function executeInstruction () {
    INSTRUCTION=$1
    echo "Executing below instruction"
    echo "$INSTRUCTION"
    echo ""
    bash -c $INSTRUCTION

}

function findSpecificRepoCharts() {
    clear
    executeInstruction "helm search repo ot-helm-demo"
}

function findCharts() {
    clear
    executeInstruction "helm search repo redis"
}

function findHubCharts() {
    clear
    executeInstruction "helm search hub redis"
}

function showChartInfo() {
    clear
    executeInstruction "helm show chart ot-helm-demo/redis"
}

function showChartValues() {
    clear
    executeInstruction "helm show values ot-helm-demo/redis"
}

function showChartReadme() {
    clear
    executeInstruction "helm show readme ot-helm-demo/redis"
}

function showChartTemplates() {
    clear
    executeInstruction "helm template ot-helm-demo/redis"
}

function downloadChart() {
    clear
    executeInstruction "helm pull ot-helm-demo/redis"
}

