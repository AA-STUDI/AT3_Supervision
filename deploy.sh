#!/usr/bin/env bash

echo "Deploiement en cours..."

kubectl apply -f storage-class.yaml
if [ $? -ne 0 ]; then echo "Erreur lors du deploiement Storage Class" ; exit 1 ; fi
kubectl apply -f elasticsearch.yaml
if [ $? -ne 0 ]; then echo "Erreur lors du deploiement Elasticsearch" ; exit 1 ; fi
kubectl apply -f kibana.yaml
if [ $? -ne 0 ]; then echo "Erreur lors du deploiement Kibana" ; exit 1 ; fi
kubectl apply -f filebeat-kubernetes.yaml
if [ $? -ne 0 ]; then echo "Erreur lors du deploiement Filebeat" ; exit 1 ; fi

echo "...SUCCES !"
