# Activité Type 3 : Supervision

## Prérequis

- Kubernetes CLI.
- Cluster Kubernetes (voir https://github.com/AA-STUDI/AT1_Infrastructure pour le déploiement de l'infrastructure.)

## Déploiement des outils de supervision

`kubectl apply -f storage-class.yaml` : *Storage Class* requise pour le volume utilisé par Elasticsearch.

`kubectl apply -f elasticsearch.yaml ` : déploiement de Elasticsearch.

`kubectl apply -f kibana.yaml` : déploiement de Kibana.

`kubectl apply -f filebeat-kubernetes.yaml` : déploiement de Filebeat (requis pour envoyer les logs vers Elasticsearch.)

## Script de déploiement

`.\deploy.ps1` : déploiement automatique de tous les outils nécessaires sur le cluster via Powershell.

`./deploy.sh` : déploiement automatique de tous les outils nécessaires sur le cluster via Bash.

## Script de suppression

`.\delete.ps1` : suppression automatique de tous les outils (Powershell.)

`./delete.sh` : suppression automatique de tous les outils (Bash.)