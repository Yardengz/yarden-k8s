# Variables
HELM_CHART_NAME=my-umbrella-release
CHART_PATH=my-umbrella-chart
NAMESPACE=monitoring

# Target to deploy monitoring
deploy_monitoring:
	@echo "Deploying monitoring stack..."
	helm install ${HELM_CHART_NAME} ${CHART_PATH} --namespace ${NAMESPACE} --create-namespace

# Target to remove monitoring
remove_monitoring:
	@echo "Removing monitoring stack..."
	helm uninstall ${HELM_CHART_NAME} --namespace ${NAMESPACE}
