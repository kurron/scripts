#!/usr/bin/env bash

KERNEL=$(uname -r)
echo "* Upgraded: Kernel ${KERNEL}"

#JDK=$(java -version)
echo "* Upgraded: JDK 0"

echo "* Upgraded: SDKMAN! 0"

PYTHON=$(python3 --version)
echo "* Upgraded: Python ${PYTHON}"

PYTHON_LEGACY=$(python --version)
echo "* Upgraded: Legacy Python ${PYTHON_LEGACY}"

PYTHON_EDGE=$(python3.6 --version)
echo "* Upgraded: Edge Python ${PYTHON_EDGE}"

VIRTUALENV=$(virtualenv --version)
echo "* Upgraded: Virtualenv ${VIRTUALENV}"

DOCKER=$(docker --version)
echo "* Upgraded: Docker ${DOCKER}"

COMPOSE=$(docker-compose --version)
echo "* Upgraded: Docker Compose ${COMPOSE}"

MACHINE=$(docker-machine --version)
echo "* Upgraded: Docker Machine ${MACHINE}"

AWS=$(aws --version)
echo "* Upgraded: AWS CLI ${AWS}"

ECS=$(ecs-cli --version)
echo "* Upgraded: AWS ECS CLI ${ECS}"

KUBE=$(kubectl version)
echo "* Upgraded: Kubectl ${KUBE}"

LOCALSTACK=$(localstack --version)
echo "* Upgraded: localstack ${LOCALSTACK}"

SYSDIG=$(sysdig --version)
echo "* Upgraded: Sysdig ${SYSDIG}"

FALCO=$(falco --version)
echo "* Upgraded: Faco ${FALCO}"

CONSUL=$(consul --version)
echo "* Upgraded: Consul ${CONSUL}"

CONSUL_REPLICATE=$(consul-replicate --version)
echo "* Upgraded: Consul Replicate ${CONSUL_REPLICATE}"

CONSUL_TEMPLATE=$(consul-template --version)
echo "* Upgraded: Consul Template ${CONSUL_TEMPLATE}"

NOMAD=$(nomad --version)
echo "* Upgraded: Nomad ${NOMAD}"

PACKER=$(packer --version)
echo "* Upgraded: Packer ${PACKER}"

TERRAFORM=$(terraform --version)
echo "* Upgraded: Terraform ${TERRAFORM}"

VAULT=$(vault --version)
echo "* Upgraded: Vault ${VAULT}"

NODE=$(node --version)
echo "* Upgraded: NodeJS ${NODE}"

NPM=$(npm --version)
echo "* Upgraded: NPM ${NPM}"

YO=$(yo --version)
echo "* Upgraded: Yeoman ${YO}"

BOWER=$(bower --version)
echo "* Upgraded: Bower ${BOWER}"

GULP=$(gulp --version)
echo "* Upgraded: Gulp ${GULP}"

GRUNT=$(grunt --version)
echo "* Upgraded: Grunt ${GRUNT}"

SERVERLESS=$(serverless --version)
echo "* Upgraded: Servless ${SERVERLESS}"

echo "* Upgraded: IntelliJ IDEA 0"
echo "* Upgraded: PyCharm 0"
echo "* Upgraded: Charles Proxy 0"
echo "* Upgraded: Atom 0"
echo "* Upgraded: Visual Studio Code 0"
echo "* Upgraded: MongoDB Compass 0"
