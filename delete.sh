#!/usr/bin/env bash

echo "Suppression en cours..."

kubectl delete -f https://download.elastic.co/downloads/eck/3.3.0/crds.yaml
if [ $? -ne 0 ]; then echo "Erreur lors de la suppression CRDs" ; exit 1 ; fi
kubectl delete -f https://download.elastic.co/downloads/eck/3.3.0/operator.yaml
if [ $? -ne 0 ]; then echo "Erreur lors de la suppression Operator ECK" ; exit 1 ; fi
kubectl delete -f storage-class.yaml
if [ $? -ne 0 ]; then echo "Erreur lors de la suppression Storage Class" ; exit 1 ; fi
kubectl delete -f elasticsearch.yaml
if [ $? -ne 0 ]; then echo "Erreur lors de la suppression Elasticsearch" ; exit 1 ; fi
kubectl delete -f kibana.yaml
if [ $? -ne 0 ]; then echo "Erreur lors de la suppression Kibana" ; exit 1 ; fi
kubectl delete -f filebeat-kubernetes.yaml
if [ $? -ne 0 ]; then echo "Erreur lors de la suppression Filebeat" ; exit 1 ; fi

echo "...SUCCES !"
