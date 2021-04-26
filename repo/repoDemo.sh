function executeInstruction () {
    INSTRUCTION=$1
    echo "Executing below instruction"
    echo "$INSTRUCTION"
    echo ""
    bash -c $INSTRUCTION

}

function showRepoOptions() {
    executeInstruction "helm repo"
}

function listRepo() {
    clear
    executeInstruction "helm repo ls"
}

function addRepo() {
    clear
    executeInstruction "helm repo add ot-helm-demo https://ot-container-kit.github.io/helm-charts/"
    executeInstruction "helm repo ls"
}

function updateRepo() {
    executeInstruction "helm repo update"
}

function removeRepo() {
    clear
    executeInstruction "helm repo remove ot-helm-demo"
    executeInstruction "helm repo ls"
}
