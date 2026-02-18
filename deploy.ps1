Write-Host "Deploiement en cours..."

kubectl apply -f storage-class.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors du deploiement Storage Class" ; exit 1 }
kubectl apply -f elasticsearch.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors du deploiement Elasticsearch" ; exit 1 }
kubectl apply -f kibana.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors du deploiement Kibana" ; exit 1 }
kubectl apply -f filebeat-kubernetes.yaml | Out-Null
if ($LASTEXITCODE -ne 0) { Write-Host "Erreur lors du deploiement Filebeat" ; exit 1 }

Write-Host "...SUCCES !"