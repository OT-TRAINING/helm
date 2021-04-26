function executeInstruction () {
    INSTRUCTION=$1
    echo "Executing below instruction"
    echo "$INSTRUCTION"
    echo ""
    bash -c $INSTRUCTION

}

function createChart() {
    clear
    executeInstruction "helm create demochart"
    executeInstruction "tree demochart"
}

function showChartFile() {
    clear
    executeInstruction "cat demochart/Chart.yaml"
}

function lintChart() {
    clear
    executeInstruction "helm lint demochart"
}


function cleanUp() {
    clear
    executeInstruction "rm -rf demochart"    
}
