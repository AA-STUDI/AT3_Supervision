Write-Host "Suppression en cours..."

kubectl delete -f https://download.elastic.co/downloads/eck/3.3.0/crds.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors de la suppression CRDs" ; exit 1 }
kubectl delete -f https://download.elastic.co/downloads/eck/3.3.0/operator.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors de la suppression Operator ECK" ; exit 1 }
kubectl delete -f storage-class.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors de la suppression Storage Class" ; exit 1 }
kubectl delete -f elasticsearch.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors de la suppression Elasticsearch" ; exit 1 }
kubectl delete -f kibana.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors de la suppression Kibana" ; exit 1 }
kubectl delete -f filebeat-kubernetes.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors de la suppression Filebeat" ; exit 1 }

Write-Host "...SUCCES !"