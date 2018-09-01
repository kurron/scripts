#!/usr/bin/env bash

KERNEL=$(uname -r)
echo "* Upgraded: Kernel ${KERNEL}"

#JDK=$(java -version)
echo "* Upgraded: JDK 0"

echo "* Upgraded: SDKMAN! 0"

PYTHON=$(python3 --version)
echo "* Upgraded: ${PYTHON}"

PYTHON_LEGACY=$(python --version)
echo "* Upgraded: Legacy ${PYTHON_LEGACY}"

VIRTUALENV=$(virtualenv --version)
echo "* Upgraded: Virtualenv ${VIRTUALENV}"

DOCKER=$(docker --version)
echo "* Upgraded: ${DOCKER}"

COMPOSE=$(docker-compose --version)
echo "* Upgraded: ${COMPOSE}"

MACHINE=$(docker-machine --version)
echo "* Upgraded: ${MACHINE}"

AWS=$(aws --version)
echo "* Upgraded: ${AWS}"

ECS=$(ecs-cli --version)
echo "* Upgraded: AWS ${ECS}"

KUBE=$(kubectl version --short=true --client=true)
echo "* Upgraded: Kubectl ${KUBE}"

HELM="$(helm version --client --short)"
echo "* Upgraded: Helm ${HELM}"

LOCALSTACK=$(localstack --version)
echo "* Upgraded: localstack ${LOCALSTACK}"

SYSDIG=$(sysdig --version)
echo "* Upgraded: ${SYSDIG}"

FALCO=$(falco --version)
echo "* Upgraded: ${FALCO}"

NOMAD=$(nomad --version)
echo "* Upgraded: ${NOMAD}"

PACKER=$(packer --version)
echo "* Upgraded: Packer ${PACKER}"

TERRAFORM=$(terraform --version)
echo "* Upgraded: ${TERRAFORM}"

VAULT=$(vault --version)
echo "* Upgraded: ${VAULT}"

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
echo "* Upgraded: Serverless ${SERVERLESS}"

echo "* Upgraded: IntelliJ IDEA 0"
echo "* Upgraded: PyCharm 0"
echo "* Upgraded: Support for VirtualBox 0"
echo "* Upgraded: Support for VMWare Fusion 0"
