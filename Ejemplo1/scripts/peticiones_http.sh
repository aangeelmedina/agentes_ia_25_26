#!/bin/bash

# Autor: Angel Ortega Medina
# Fecha: 02/10/2025
# Descripción: Script de pruebas CRUD usando CURL

source .env

# GET AUTORES
curl -X GET "$BASE_URL/autores"

# GET LIBROS
curl -X GET "$BASE_URL/libros"

# POST AUTOR
curl -X POST "$BASE_URL/autores" \
  -H "Content-Type: application/json" \
  -d '{"id":"11","nombre":"Nuevo Autor","nacionalidad":"España"}'

# POST LIBRO
curl -X POST "$BASE_URL/libros" \
  -H "Content-Type: application/json" \
  -d '{"id":"12","titulo":"Nuevo libro","anio":2025,"autorId":3}'

# PUT AUTOR (actualizar autor con id 2)
curl -X PUT "$BASE_URL/autores/2" \
  -H "Content-Type: application/json" \
  -d '{"id":"2","nombre":"Douglas C. Crockford","nacionalidad":"EE.UU."}'

# PUT LIBRO (actualizar libro con id 1)
curl -X PUT "$BASE_URL/libros/1" \
  -H "Content-Type: application/json" \
  -d '{"id":"1","titulo":"titulo actualizado","anio":2025,"autorId":2}'

# DELETE AUTOR (ejemplo: borrar autor con id 10)
curl -X DELETE "$BASE_URL/autores/10"

# DELETE LIBRO (ejemplo: borrar libro con id 11)
curl -X DELETE "$BASE_URL/libros/11"
