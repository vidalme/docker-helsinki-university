#!/bin/bash
# i refer to the original path for the app code ../../part-1/ex-1.12/example-frontend/
docker buildx build -t frontend-final ../../part-1/ex-1.12/example-frontend/ -f frontend.dockerfile