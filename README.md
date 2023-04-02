# Helm deployments

## Prometheus deployment
Follow instructions here: https://faun.pub/kube-prometheus-with-terraform-and-helm-24cac706fbdb

- Get everything within monitoring namespace

    ```
    kubectl get svc --namespace monitoring
    ```

- Port forward to prometheus. PromQL examples for monitoring kubernetes (https://sysdig.com/blog/prometheus-query-examples/)

    ```
    kubectl port-forward svc/kube-prometheus-stackr-prometheus 9090:9090 --namespace monitoring
    ```

- Grafana.  There is a default password, and it is set in secrets. Username is admin.
    
    ```
    # Get secret required to login
    kubectl get secret --namespace monitoring kube-prometheus-stackr-grafana  -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
    # Port forward
    kubectl port-forward svc/kube-prometheus-stackr-grafana 3000:80 --namespace monitoring
    ```

- Look at alert manager

    ```
    kubectl port-forward svc/kube-prometheus-stackr-alertmanager 9093:9093 --namespace monitoring
    ```
