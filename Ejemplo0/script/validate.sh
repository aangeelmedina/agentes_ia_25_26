#!/bin/bash

# Angel Ortega Medina
# comment
# Descripcion: script que valida si tenemos instalados:git,node,npm,curl
# crear un script que utilizando command -v verifique si tengo instalado los paquetes git, node, npm, curl. Si alguno de dichos paquetes no esta mostrara mensaje de error

clear

echo "verificando los requisitos previos"

if command -v node > /dev/null 2>&1; then
	NODE_VERSION=$(node --version)
	echo "Node instalado correctamente; version: $NODE_VERSION"
else
	echo "No tienes intalado NodeJS"
	exit 1
fi

if command -v git > /dev/null 2>&1; then
        git_VERSION=$(git --version)
        echo "git instalado correctamente; version: $git_VERSION"
else
        echo "No tienes intalado git"
        exit 1
fi


if command -v npm > /dev/null 2>&1; then
        NPM_VERSION=$(npm --version)
        echo "npm instalado correctamente; version: $NPM_VERSION"
else
        echo "No tienes intalado npm"
        exit 1
fi


if command -v curl > /dev/null 2>&1; then
        CURL_VERSION=$(curl --version)
        echo "curl instalado correctamente; version:"
else
        echo "No tienes intalado curl"
        exit 1
fi

echo "Todos los paquetes instalados correctamente"
