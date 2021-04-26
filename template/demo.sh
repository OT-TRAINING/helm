function templatesWithFile() {
	helm install sandy template --dry-run -f values.yaml
}

function templatesWithArgument() {
	helm install sandy template --dry-run --set replicatCount=4
}

function tempates() {
	helm install sandy template --dry-run
}
