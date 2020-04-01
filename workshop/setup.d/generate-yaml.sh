#!/bin/bash

# Fill in the values from variables substitution
cat .exercises/values.yaml.in | envsubst > .exercises/values.yaml

# Execute the templates

ytt -f .exercises/values.yaml -f .exercises/deployment.yaml > exercises/deployment.yaml
ytt -f .exercises/values.yaml -f .exercises/image.yaml > exercises/image.yaml
