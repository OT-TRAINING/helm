function executeInstruction () {
    INSTRUCTION=$1
    echo "Executing below instruction"
    echo "$INSTRUCTION"
    echo ""
    bash -c $INSTRUCTION

}

function createRelease() {
    clear
    executeInstruction "helm install redisdemo ot-helm-demo/redis"
    executeInstruction "kubectl get pods"
}

function listRelease() {
    clear
    executeInstruction "helm ls"
}

function getReleaseManifests() {
    clear
    executeInstruction "helm get manifest redisdemo"
}

function getReleaseAllDetails() {
    clear
    executeInstruction "helm get all redisdemo"
}

function getReleaseValues() {
    clear
    executeInstruction "helm get values redisdemo"
}

function upgradeRelease() {
    clear
    executeInstruction "helm upgrade redisdemo ot-helm-demo/redis"
    executeInstruction "helm ls"
}

function upgradeReleaseWithValues() {
    clear
    executeInstruction "helm upgrade redisdemo --set replicaCount=2 ot-helm-demo/redis"
    executeInstruction "helm get values redisdemo"
}

function uninstall() {
    clear
    executeInstruction "helm uninstall redisdemo"
}

