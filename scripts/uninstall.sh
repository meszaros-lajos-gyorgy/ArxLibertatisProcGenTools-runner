#!/bin/bash

docker kill arx-powershell
docker rm arx-powershell
docker rmi debian-with-powershell
