function templatesWithFile() {
	helm install sandy template --dry-run -f values.yaml
}

function templatesWithArgument() {
	helm install sandy template --dry-run --set replicaCount=4
}

function templates() {
	helm install sandy template --dry-run
}
