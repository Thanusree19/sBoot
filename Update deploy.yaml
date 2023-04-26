apiVersion: apps/v1
kind: Depolyment
metadata:
  creationTimestamp: null
  labels:
     app: sboot12
   name: sboot12
 spec:
    replicas: 1
    selector:
       matchLabels:
          app:sboot12
      strategy: {}
      templete:
         metadata:
            creationTimestamp: null
            labels:
               app: sboot12
         spec:
            containers:
            - image: thanusree19/sboot12:latest
              name: sboot12
              resources: {}
    status: {}
    ---
   apiVersion: v1
   kind: Service
   metadata:
     creationTimestamp: null
     labels:
       app: sboot12
     name: sboot12
  spec:
    ports:
    - name: 8091-8091
      port: 8091
      protocol: TCP
      targetPort: 8091
    - name: 8090-8090
      port: 8090
      protocol: TCP
      targetPort: 8090
    selector:
      app: sboot12
    type: LoadBalancer
  status:
    loadBalancer: {}
