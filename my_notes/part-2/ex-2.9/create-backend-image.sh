#!/bin/bash
# i refer to the original path for the app code ../../part-1/ex-1.13/example-backend/
docker buildx build -t backend-final ../../part-1/ex-1.13/example-backend/ -f backend.dockerfile