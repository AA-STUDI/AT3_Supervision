Write-Host "Suppression en cours..."

kubectl delete -f storage-class.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors de la suppression Storage Class" ; exit 1 }
kubectl delete -f elasticsearch.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors de la suppression Elasticsearch" ; exit 1 }
kubectl delete -f kibana.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors de la suppression Kibana" ; exit 1 }
kubectl delete -f filebeat-kubernetes.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors de la suppression Filebeat" ; exit 1 }

Write-Host "...SUCCES !"