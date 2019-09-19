#!/bin/bash

java -jar jars/swagger-codegen.jar generate \
                                  -l ruby \
                                  -i ./swagger.yaml \
                                  -c config.json