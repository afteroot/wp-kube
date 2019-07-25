tr -d '\n' <password.txt >.strippedpassword.txt && mv .strippedpassword.txt password.txt

# Install 
kubectl create -f local-volumes.yaml
kubectl create secret generic mysql-pass --from-file=password.txt
kubectl create -f mysql-deployment.yaml
kubectl create -f wordpress-deployment.yaml


# Delete 
#kubectl delete secret mysql-pass
#kubectl delete deployment,service,pvc -l app=wordpress
