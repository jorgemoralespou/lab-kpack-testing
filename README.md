Lab - Kpack Testing
===================

This is a workshop for testing application deployment using [kpack](https://github.com/pivotal/kpack).

Prerequisites
-------------

In order to use the workshop you should have the eduk8s operator installed.

You must also have the kpack operator installed in the Kubernetes cluster you want to use, and have it managing builds for all namespaces.

For installation instructions for the eduk8s operator see:

* https://github.com/eduk8s/eduk8s-operator

For installation instructions for kpack, see:

* https://github.com/pivotal/kpack

You do not need to set up a global `ClusterBuilder` definition, or namespaces service accounts for this workshop. In other words, for kpack it is generally sufficient to install kpack by running:

```
kubectl apply -f https://github.com/pivotal/kpack/releases/download/v0.0.8/release-0.0.8.yaml
```

Deployment
----------

To load the workshop definition run:

```
kubectl apply -k github.com/eduk8s-tests/lab-kpack-testing
```

To deploy a sample training portal which hosts the workshop, run:

```
kubectl apply -f https://raw.githubusercontent.com/eduk8s-tests/lab-kpack-testing/master/resources/training-portal.yaml
```

Then run:

```
kubectl get trainingportal/lab-kpack-testing
```

This will output the URL to access the web portal for the training environment.

You need to be a cluster admin to create the deployment using this method.

Deletion
--------

To delete the training portal deployment, run:

```
kubectl delete -f https://raw.githubusercontent.com/eduk8s-tests/lab-kpack-testing/master/resources/training-portal.yaml
```

When you are finished with the workshop definition, you can delete it by running:

```
kubectl delete -k github.com/eduk8s-tests/lab-kpack-testing
